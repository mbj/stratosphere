
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateSpotOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateSpotOptions. See
-- 'ec2LaunchTemplateSpotOptions' for a more convenient constructor.
data EC2LaunchTemplateSpotOptions =
  EC2LaunchTemplateSpotOptions
  { _eC2LaunchTemplateSpotOptionsBlockDurationMinutes :: Maybe (Val Integer)
  , _eC2LaunchTemplateSpotOptionsInstanceInterruptionBehavior :: Maybe (Val Text)
  , _eC2LaunchTemplateSpotOptionsMaxPrice :: Maybe (Val Text)
  , _eC2LaunchTemplateSpotOptionsSpotInstanceType :: Maybe (Val Text)
  , _eC2LaunchTemplateSpotOptionsValidUntil :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateSpotOptions where
  toJSON EC2LaunchTemplateSpotOptions{..} =
    object $
    catMaybes
    [ fmap (("BlockDurationMinutes",) . toJSON) _eC2LaunchTemplateSpotOptionsBlockDurationMinutes
    , fmap (("InstanceInterruptionBehavior",) . toJSON) _eC2LaunchTemplateSpotOptionsInstanceInterruptionBehavior
    , fmap (("MaxPrice",) . toJSON) _eC2LaunchTemplateSpotOptionsMaxPrice
    , fmap (("SpotInstanceType",) . toJSON) _eC2LaunchTemplateSpotOptionsSpotInstanceType
    , fmap (("ValidUntil",) . toJSON) _eC2LaunchTemplateSpotOptionsValidUntil
    ]

-- | Constructor for 'EC2LaunchTemplateSpotOptions' containing required fields
-- as arguments.
ec2LaunchTemplateSpotOptions
  :: EC2LaunchTemplateSpotOptions
ec2LaunchTemplateSpotOptions  =
  EC2LaunchTemplateSpotOptions
  { _eC2LaunchTemplateSpotOptionsBlockDurationMinutes = Nothing
  , _eC2LaunchTemplateSpotOptionsInstanceInterruptionBehavior = Nothing
  , _eC2LaunchTemplateSpotOptionsMaxPrice = Nothing
  , _eC2LaunchTemplateSpotOptionsSpotInstanceType = Nothing
  , _eC2LaunchTemplateSpotOptionsValidUntil = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-blockdurationminutes
ecltsoBlockDurationMinutes :: Lens' EC2LaunchTemplateSpotOptions (Maybe (Val Integer))
ecltsoBlockDurationMinutes = lens _eC2LaunchTemplateSpotOptionsBlockDurationMinutes (\s a -> s { _eC2LaunchTemplateSpotOptionsBlockDurationMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-instanceinterruptionbehavior
ecltsoInstanceInterruptionBehavior :: Lens' EC2LaunchTemplateSpotOptions (Maybe (Val Text))
ecltsoInstanceInterruptionBehavior = lens _eC2LaunchTemplateSpotOptionsInstanceInterruptionBehavior (\s a -> s { _eC2LaunchTemplateSpotOptionsInstanceInterruptionBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-maxprice
ecltsoMaxPrice :: Lens' EC2LaunchTemplateSpotOptions (Maybe (Val Text))
ecltsoMaxPrice = lens _eC2LaunchTemplateSpotOptionsMaxPrice (\s a -> s { _eC2LaunchTemplateSpotOptionsMaxPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-spotinstancetype
ecltsoSpotInstanceType :: Lens' EC2LaunchTemplateSpotOptions (Maybe (Val Text))
ecltsoSpotInstanceType = lens _eC2LaunchTemplateSpotOptionsSpotInstanceType (\s a -> s { _eC2LaunchTemplateSpotOptionsSpotInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-validuntil
ecltsoValidUntil :: Lens' EC2LaunchTemplateSpotOptions (Maybe (Val Text))
ecltsoValidUntil = lens _eC2LaunchTemplateSpotOptionsValidUntil (\s a -> s { _eC2LaunchTemplateSpotOptionsValidUntil = a })
