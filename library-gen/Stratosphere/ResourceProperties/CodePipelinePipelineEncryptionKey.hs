
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html

module Stratosphere.ResourceProperties.CodePipelinePipelineEncryptionKey where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodePipelinePipelineEncryptionKey. See
-- 'codePipelinePipelineEncryptionKey' for a more convenient constructor.
data CodePipelinePipelineEncryptionKey =
  CodePipelinePipelineEncryptionKey
  { _codePipelinePipelineEncryptionKeyId :: Val Text
  , _codePipelinePipelineEncryptionKeyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineEncryptionKey where
  toJSON CodePipelinePipelineEncryptionKey{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _codePipelinePipelineEncryptionKeyId
    , (Just . ("Type",) . toJSON) _codePipelinePipelineEncryptionKeyType
    ]

-- | Constructor for 'CodePipelinePipelineEncryptionKey' containing required
-- fields as arguments.
codePipelinePipelineEncryptionKey
  :: Val Text -- ^ 'cppekId'
  -> Val Text -- ^ 'cppekType'
  -> CodePipelinePipelineEncryptionKey
codePipelinePipelineEncryptionKey idarg typearg =
  CodePipelinePipelineEncryptionKey
  { _codePipelinePipelineEncryptionKeyId = idarg
  , _codePipelinePipelineEncryptionKeyType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-id
cppekId :: Lens' CodePipelinePipelineEncryptionKey (Val Text)
cppekId = lens _codePipelinePipelineEncryptionKeyId (\s a -> s { _codePipelinePipelineEncryptionKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-type
cppekType :: Lens' CodePipelinePipelineEncryptionKey (Val Text)
cppekType = lens _codePipelinePipelineEncryptionKeyType (\s a -> s { _codePipelinePipelineEncryptionKeyType = a })
