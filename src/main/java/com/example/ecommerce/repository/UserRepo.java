package com.example.ecommerce.repository;

import com.example.ecommerce.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {
    User findByUsername(String username);
    User findByUserId(Integer userId);
    User findByUsernameAndPasswordHash(String username, String password);
    @Query(value = "DECLARE @user_id INT; " +
            "INSERT INTO  [dbo].[users] ([username], [password_hash], [email], [role], [status], [created_at], [last_modified]) " +
            "VALUES (:username, :password_hash, :email, 'user', 'Active', GETDATE(), GETDATE())\n" +
            "SET @user_id = SCOPE_IDENTITY(); " +
            "SELECT @user_id", nativeQuery = true)
    Integer createUserAndGetId(@Param("username") String username,
                                @Param("password_hash") String passwordHash,
                                @Param("email") String email);
}
