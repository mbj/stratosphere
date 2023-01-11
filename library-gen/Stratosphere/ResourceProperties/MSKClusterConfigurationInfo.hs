
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html

module Stratosphere.ResourceProperties.MSKClusterConfigurationInfo where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterConfigurationInfo. See
-- 'mskClusterConfigurationInfo' for a more convenient constructor.
data MSKClusterConfigurationInfo =
  MSKClusterConfigurationInfo
  { _mSKClusterConfigurationInfoArn :: Val Text
  , _mSKClusterConfigurationInfoRevision :: Val Integer
  } deriving (Show, Eq)

instance ToJSON MSKClusterConfigurationInfo where
  toJSON MSKClusterConfigurationInfo{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _mSKClusterConfigurationInfoArn
    , (Just . ("Revision",) . toJSON) _mSKClusterConfigurationInfoRevision
    ]

-- | Constructor for 'MSKClusterConfigurationInfo' containing required fields
-- as arguments.
mskClusterConfigurationInfo
  :: Val Text -- ^ 'mskcciArn'
  -> Val Integer -- ^ 'mskcciRevision'
  -> MSKClusterConfigurationInfo
mskClusterConfigurationInfo arnarg revisionarg =
  MSKClusterConfigurationInfo
  { _mSKClusterConfigurationInfoArn = arnarg
  , _mSKClusterConfigurationInfoRevision = revisionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html#cfn-msk-cluster-configurationinfo-arn
mskcciArn :: Lens' MSKClusterConfigurationInfo (Val Text)
mskcciArn = lens _mSKClusterConfigurationInfoArn (\s a -> s { _mSKClusterConfigurationInfoArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html#cfn-msk-cluster-configurationinfo-revision
mskcciRevision :: Lens' MSKClusterConfigurationInfo (Val Integer)
mskcciRevision = lens _mSKClusterConfigurationInfoRevision (\s a -> s { _mSKClusterConfigurationInfoRevision = a })
