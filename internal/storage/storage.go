package storage

import "errors"

var (
	ErrUserNotFound = errors.New("user not found")
	ErrUserExists   = errors.New("user already exists")
	ErrAppNotFound  = errors.New("app not found")
)
