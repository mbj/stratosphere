{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html

module Stratosphere.ResourceProperties.CodeBuildProjectSourceAuth where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeBuildProjectSourceAuth. See
-- 'codeBuildProjectSourceAuth' for a more convenient constructor.
data CodeBuildProjectSourceAuth =
  CodeBuildProjectSourceAuth
  { _codeBuildProjectSourceAuthResource :: Maybe (Val Text)
  , _codeBuildProjectSourceAuthType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectSourceAuth where
  toJSON CodeBuildProjectSourceAuth{..} =
    object $
    catMaybes
    [ fmap (("Resource",) . toJSON) _codeBuildProjectSourceAuthResource
    , fmap (("Type",) . toJSON) _codeBuildProjectSourceAuthType
    ]

instance FromJSON CodeBuildProjectSourceAuth where
  parseJSON (Object obj) =
    CodeBuildProjectSourceAuth <$>
      (obj .:? "Resource") <*>
      (obj .:? "Type")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectSourceAuth' containing required fields
-- as arguments.
codeBuildProjectSourceAuth
  :: CodeBuildProjectSourceAuth
codeBuildProjectSourceAuth  =
  CodeBuildProjectSourceAuth
  { _codeBuildProjectSourceAuthResource = Nothing
  , _codeBuildProjectSourceAuthType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource
cbpsaResource :: Lens' CodeBuildProjectSourceAuth (Maybe (Val Text))
cbpsaResource = lens _codeBuildProjectSourceAuthResource (\s a -> s { _codeBuildProjectSourceAuthResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type
cbpsaType :: Lens' CodeBuildProjectSourceAuth (Maybe (Val Text))
cbpsaType = lens _codeBuildProjectSourceAuthType (\s a -> s { _codeBuildProjectSourceAuthType = a })
