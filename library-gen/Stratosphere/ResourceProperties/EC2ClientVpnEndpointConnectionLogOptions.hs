
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html

module Stratosphere.ResourceProperties.EC2ClientVpnEndpointConnectionLogOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EC2ClientVpnEndpointConnectionLogOptions.
-- See 'ec2ClientVpnEndpointConnectionLogOptions' for a more convenient
-- constructor.
data EC2ClientVpnEndpointConnectionLogOptions =
  EC2ClientVpnEndpointConnectionLogOptions
  { _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogGroup :: Maybe (Val Text)
  , _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogStream :: Maybe (Val Text)
  , _eC2ClientVpnEndpointConnectionLogOptionsEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON EC2ClientVpnEndpointConnectionLogOptions where
  toJSON EC2ClientVpnEndpointConnectionLogOptions{..} =
    object $
    catMaybes
    [ fmap (("CloudwatchLogGroup",) . toJSON) _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogGroup
    , fmap (("CloudwatchLogStream",) . toJSON) _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogStream
    , (Just . ("Enabled",) . toJSON) _eC2ClientVpnEndpointConnectionLogOptionsEnabled
    ]

-- | Constructor for 'EC2ClientVpnEndpointConnectionLogOptions' containing
-- required fields as arguments.
ec2ClientVpnEndpointConnectionLogOptions
  :: Val Bool -- ^ 'eccvecloEnabled'
  -> EC2ClientVpnEndpointConnectionLogOptions
ec2ClientVpnEndpointConnectionLogOptions enabledarg =
  EC2ClientVpnEndpointConnectionLogOptions
  { _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogGroup = Nothing
  , _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogStream = Nothing
  , _eC2ClientVpnEndpointConnectionLogOptionsEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchloggroup
eccvecloCloudwatchLogGroup :: Lens' EC2ClientVpnEndpointConnectionLogOptions (Maybe (Val Text))
eccvecloCloudwatchLogGroup = lens _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogGroup (\s a -> s { _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchlogstream
eccvecloCloudwatchLogStream :: Lens' EC2ClientVpnEndpointConnectionLogOptions (Maybe (Val Text))
eccvecloCloudwatchLogStream = lens _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogStream (\s a -> s { _eC2ClientVpnEndpointConnectionLogOptionsCloudwatchLogStream = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-enabled
eccvecloEnabled :: Lens' EC2ClientVpnEndpointConnectionLogOptions (Val Bool)
eccvecloEnabled = lens _eC2ClientVpnEndpointConnectionLogOptionsEnabled (\s a -> s { _eC2ClientVpnEndpointConnectionLogOptionsEnabled = a })
