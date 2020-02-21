{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateMetadataOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateMetadataOptions. See
-- 'ec2LaunchTemplateMetadataOptions' for a more convenient constructor.
data EC2LaunchTemplateMetadataOptions =
  EC2LaunchTemplateMetadataOptions
  { _eC2LaunchTemplateMetadataOptionsHttpEndpoint :: Maybe (Val Text)
  , _eC2LaunchTemplateMetadataOptionsHttpPutResponseHopLimit :: Maybe (Val Integer)
  , _eC2LaunchTemplateMetadataOptionsHttpTokens :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateMetadataOptions where
  toJSON EC2LaunchTemplateMetadataOptions{..} =
    object $
    catMaybes
    [ fmap (("HttpEndpoint",) . toJSON) _eC2LaunchTemplateMetadataOptionsHttpEndpoint
    , fmap (("HttpPutResponseHopLimit",) . toJSON) _eC2LaunchTemplateMetadataOptionsHttpPutResponseHopLimit
    , fmap (("HttpTokens",) . toJSON) _eC2LaunchTemplateMetadataOptionsHttpTokens
    ]

-- | Constructor for 'EC2LaunchTemplateMetadataOptions' containing required
-- fields as arguments.
ec2LaunchTemplateMetadataOptions
  :: EC2LaunchTemplateMetadataOptions
ec2LaunchTemplateMetadataOptions  =
  EC2LaunchTemplateMetadataOptions
  { _eC2LaunchTemplateMetadataOptionsHttpEndpoint = Nothing
  , _eC2LaunchTemplateMetadataOptionsHttpPutResponseHopLimit = Nothing
  , _eC2LaunchTemplateMetadataOptionsHttpTokens = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions-httpendpoint
ecltmoHttpEndpoint :: Lens' EC2LaunchTemplateMetadataOptions (Maybe (Val Text))
ecltmoHttpEndpoint = lens _eC2LaunchTemplateMetadataOptionsHttpEndpoint (\s a -> s { _eC2LaunchTemplateMetadataOptionsHttpEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions-httpputresponsehoplimit
ecltmoHttpPutResponseHopLimit :: Lens' EC2LaunchTemplateMetadataOptions (Maybe (Val Integer))
ecltmoHttpPutResponseHopLimit = lens _eC2LaunchTemplateMetadataOptionsHttpPutResponseHopLimit (\s a -> s { _eC2LaunchTemplateMetadataOptionsHttpPutResponseHopLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-metadataoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-metadataoptions-httptokens
ecltmoHttpTokens :: Lens' EC2LaunchTemplateMetadataOptions (Maybe (Val Text))
ecltmoHttpTokens = lens _eC2LaunchTemplateMetadataOptionsHttpTokens (\s a -> s { _eC2LaunchTemplateMetadataOptionsHttpTokens = a })
