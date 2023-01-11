
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeAwsCloudMapInstanceAttribute where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualNodeAwsCloudMapInstanceAttribute. See
-- 'appMeshVirtualNodeAwsCloudMapInstanceAttribute' for a more convenient
-- constructor.
data AppMeshVirtualNodeAwsCloudMapInstanceAttribute =
  AppMeshVirtualNodeAwsCloudMapInstanceAttribute
  { _appMeshVirtualNodeAwsCloudMapInstanceAttributeKey :: Val Text
  , _appMeshVirtualNodeAwsCloudMapInstanceAttributeValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeAwsCloudMapInstanceAttribute where
  toJSON AppMeshVirtualNodeAwsCloudMapInstanceAttribute{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appMeshVirtualNodeAwsCloudMapInstanceAttributeKey
    , (Just . ("Value",) . toJSON) _appMeshVirtualNodeAwsCloudMapInstanceAttributeValue
    ]

-- | Constructor for 'AppMeshVirtualNodeAwsCloudMapInstanceAttribute'
-- containing required fields as arguments.
appMeshVirtualNodeAwsCloudMapInstanceAttribute
  :: Val Text -- ^ 'amvnacmiaKey'
  -> Val Text -- ^ 'amvnacmiaValue'
  -> AppMeshVirtualNodeAwsCloudMapInstanceAttribute
appMeshVirtualNodeAwsCloudMapInstanceAttribute keyarg valuearg =
  AppMeshVirtualNodeAwsCloudMapInstanceAttribute
  { _appMeshVirtualNodeAwsCloudMapInstanceAttributeKey = keyarg
  , _appMeshVirtualNodeAwsCloudMapInstanceAttributeValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html#cfn-appmesh-virtualnode-awscloudmapinstanceattribute-key
amvnacmiaKey :: Lens' AppMeshVirtualNodeAwsCloudMapInstanceAttribute (Val Text)
amvnacmiaKey = lens _appMeshVirtualNodeAwsCloudMapInstanceAttributeKey (\s a -> s { _appMeshVirtualNodeAwsCloudMapInstanceAttributeKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html#cfn-appmesh-virtualnode-awscloudmapinstanceattribute-value
amvnacmiaValue :: Lens' AppMeshVirtualNodeAwsCloudMapInstanceAttribute (Val Text)
amvnacmiaValue = lens _appMeshVirtualNodeAwsCloudMapInstanceAttributeValue (\s a -> s { _appMeshVirtualNodeAwsCloudMapInstanceAttributeValue = a })
