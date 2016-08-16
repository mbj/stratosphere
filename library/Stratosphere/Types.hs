{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Module for hand-written types that are used in generated modules.

module Stratosphere.Types
  ( CannedACL (..)
  ) where

import Data.Aeson
import GHC.Generics

-- | Amazon S3 supports a set of predefined grants, known as canned ACLs. Each
-- canned ACL has a predefined a set of grantees and permissions. The following
-- table lists the set of canned ACLs and the associated predefined grants.
-- See:
-- http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
data CannedACL
  = AuthenticatedRead
  | AwsExecRead
  | BucketOwnerRead
  | BucketOwnerFullControl
  | LogDeliveryWrite
  | Private
  | PublicRead
  | PublicReadWrite
  deriving (Show, Read, Eq, Generic, FromJSON, ToJSON)
