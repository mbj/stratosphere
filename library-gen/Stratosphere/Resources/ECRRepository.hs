{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html

module Stratosphere.Resources.ECRRepository where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECRRepository. See 'ecrRepository' for a
-- | more convenient constructor.
data ECRRepository =
  ECRRepository
  { _eCRRepositoryRepositoryName :: Maybe (Val Text)
  , _eCRRepositoryRepositoryPolicyText :: Maybe Object
  } deriving (Show, Generic)

instance ToJSON ECRRepository where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON ECRRepository where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'ECRRepository' containing required fields as arguments.
ecrRepository
  :: ECRRepository
ecrRepository  =
  ECRRepository
  { _eCRRepositoryRepositoryName = Nothing
  , _eCRRepositoryRepositoryPolicyText = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositoryname
ecrrRepositoryName :: Lens' ECRRepository (Maybe (Val Text))
ecrrRepositoryName = lens _eCRRepositoryRepositoryName (\s a -> s { _eCRRepositoryRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositorypolicytext
ecrrRepositoryPolicyText :: Lens' ECRRepository (Maybe Object)
ecrrRepositoryPolicyText = lens _eCRRepositoryRepositoryPolicyText (\s a -> s { _eCRRepositoryRepositoryPolicyText = a })
