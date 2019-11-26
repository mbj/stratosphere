{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html

module Stratosphere.ResourceProperties.S3AccessPointVpcConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for S3AccessPointVpcConfiguration. See
-- 's3AccessPointVpcConfiguration' for a more convenient constructor.
data S3AccessPointVpcConfiguration =
  S3AccessPointVpcConfiguration
  { _s3AccessPointVpcConfigurationVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3AccessPointVpcConfiguration where
  toJSON S3AccessPointVpcConfiguration{..} =
    object $
    catMaybes
    [ fmap (("VpcId",) . toJSON) _s3AccessPointVpcConfigurationVpcId
    ]

-- | Constructor for 'S3AccessPointVpcConfiguration' containing required
-- fields as arguments.
s3AccessPointVpcConfiguration
  :: S3AccessPointVpcConfiguration
s3AccessPointVpcConfiguration  =
  S3AccessPointVpcConfiguration
  { _s3AccessPointVpcConfigurationVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html#cfn-s3-accesspoint-vpcconfiguration-vpcid
sapvcVpcId :: Lens' S3AccessPointVpcConfiguration (Maybe (Val Text))
sapvcVpcId = lens _s3AccessPointVpcConfigurationVpcId (\s a -> s { _s3AccessPointVpcConfigurationVpcId = a })
