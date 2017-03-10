{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html

module Stratosphere.ResourceProperties.CodePipelinePipelineBlockerDeclaration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineBlockerDeclaration. See
-- 'codePipelinePipelineBlockerDeclaration' for a more convenient
-- constructor.
data CodePipelinePipelineBlockerDeclaration =
  CodePipelinePipelineBlockerDeclaration
  { _codePipelinePipelineBlockerDeclarationName :: Val Text
  , _codePipelinePipelineBlockerDeclarationType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineBlockerDeclaration where
  toJSON CodePipelinePipelineBlockerDeclaration{..} =
    object $
    catMaybes
    [ Just ("Name" .= _codePipelinePipelineBlockerDeclarationName)
    , Just ("Type" .= _codePipelinePipelineBlockerDeclarationType)
    ]

instance FromJSON CodePipelinePipelineBlockerDeclaration where
  parseJSON (Object obj) =
    CodePipelinePipelineBlockerDeclaration <$>
      obj .: "Name" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelinePipelineBlockerDeclaration' containing
-- required fields as arguments.
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
