{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html

module Stratosphere.ResourceProperties.CodePipelinePipelineBlockerDeclaration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineBlockerDeclaration. See
-- | 'codePipelinePipelineBlockerDeclaration' for a more convenient
-- | constructor.
data CodePipelinePipelineBlockerDeclaration =
  CodePipelinePipelineBlockerDeclaration
  { _codePipelinePipelineBlockerDeclarationName :: Val Text
  , _codePipelinePipelineBlockerDeclarationType :: Val Text
  } deriving (Show, Generic)

instance ToJSON CodePipelinePipelineBlockerDeclaration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON CodePipelinePipelineBlockerDeclaration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

-- | Constructor for 'CodePipelinePipelineBlockerDeclaration' containing
-- | required fields as arguments.
codePipelinePipelineBlockerDeclaration
  :: Val Text -- ^ 'cppbdName'
  -> Val Text -- ^ 'cppbdType'
  -> CodePipelinePipelineBlockerDeclaration
codePipelinePipelineBlockerDeclaration namearg typearg =
  CodePipelinePipelineBlockerDeclaration
  { _codePipelinePipelineBlockerDeclarationName = namearg
  , _codePipelinePipelineBlockerDeclarationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html#cfn-codepipeline-pipeline-stages-blockers-name
cppbdName :: Lens' CodePipelinePipelineBlockerDeclaration (Val Text)
cppbdName = lens _codePipelinePipelineBlockerDeclarationName (\s a -> s { _codePipelinePipelineBlockerDeclarationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html#cfn-codepipeline-pipeline-stages-blockers-type
cppbdType :: Lens' CodePipelinePipelineBlockerDeclaration (Val Text)
cppbdType = lens _codePipelinePipelineBlockerDeclarationType (\s a -> s { _codePipelinePipelineBlockerDeclarationType = a })
