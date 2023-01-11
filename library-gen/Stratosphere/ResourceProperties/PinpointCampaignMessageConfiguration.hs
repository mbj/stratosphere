
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html

module Stratosphere.ResourceProperties.PinpointCampaignMessageConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointCampaignMessage
import Stratosphere.ResourceProperties.PinpointCampaignCampaignEmailMessage
import Stratosphere.ResourceProperties.PinpointCampaignCampaignSmsMessage

-- | Full data type definition for PinpointCampaignMessageConfiguration. See
-- 'pinpointCampaignMessageConfiguration' for a more convenient constructor.
data PinpointCampaignMessageConfiguration =
  PinpointCampaignMessageConfiguration
  { _pinpointCampaignMessageConfigurationADMMessage :: Maybe PinpointCampaignMessage
  , _pinpointCampaignMessageConfigurationAPNSMessage :: Maybe PinpointCampaignMessage
  , _pinpointCampaignMessageConfigurationBaiduMessage :: Maybe PinpointCampaignMessage
  , _pinpointCampaignMessageConfigurationDefaultMessage :: Maybe PinpointCampaignMessage
  , _pinpointCampaignMessageConfigurationEmailMessage :: Maybe PinpointCampaignCampaignEmailMessage
  , _pinpointCampaignMessageConfigurationGCMMessage :: Maybe PinpointCampaignMessage
  , _pinpointCampaignMessageConfigurationSMSMessage :: Maybe PinpointCampaignCampaignSmsMessage
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignMessageConfiguration where
  toJSON PinpointCampaignMessageConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ADMMessage",) . toJSON) _pinpointCampaignMessageConfigurationADMMessage
    , fmap (("APNSMessage",) . toJSON) _pinpointCampaignMessageConfigurationAPNSMessage
    , fmap (("BaiduMessage",) . toJSON) _pinpointCampaignMessageConfigurationBaiduMessage
    , fmap (("DefaultMessage",) . toJSON) _pinpointCampaignMessageConfigurationDefaultMessage
    , fmap (("EmailMessage",) . toJSON) _pinpointCampaignMessageConfigurationEmailMessage
    , fmap (("GCMMessage",) . toJSON) _pinpointCampaignMessageConfigurationGCMMessage
    , fmap (("SMSMessage",) . toJSON) _pinpointCampaignMessageConfigurationSMSMessage
    ]

-- | Constructor for 'PinpointCampaignMessageConfiguration' containing
-- required fields as arguments.
pinpointCampaignMessageConfiguration
  :: PinpointCampaignMessageConfiguration
pinpointCampaignMessageConfiguration  =
  PinpointCampaignMessageConfiguration
  { _pinpointCampaignMessageConfigurationADMMessage = Nothing
  , _pinpointCampaignMessageConfigurationAPNSMessage = Nothing
  , _pinpointCampaignMessageConfigurationBaiduMessage = Nothing
  , _pinpointCampaignMessageConfigurationDefaultMessage = Nothing
  , _pinpointCampaignMessageConfigurationEmailMessage = Nothing
  , _pinpointCampaignMessageConfigurationGCMMessage = Nothing
  , _pinpointCampaignMessageConfigurationSMSMessage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-admmessage
pcmcADMMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignMessage)
pcmcADMMessage = lens _pinpointCampaignMessageConfigurationADMMessage (\s a -> s { _pinpointCampaignMessageConfigurationADMMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-apnsmessage
pcmcAPNSMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignMessage)
pcmcAPNSMessage = lens _pinpointCampaignMessageConfigurationAPNSMessage (\s a -> s { _pinpointCampaignMessageConfigurationAPNSMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-baidumessage
pcmcBaiduMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignMessage)
pcmcBaiduMessage = lens _pinpointCampaignMessageConfigurationBaiduMessage (\s a -> s { _pinpointCampaignMessageConfigurationBaiduMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-defaultmessage
pcmcDefaultMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignMessage)
pcmcDefaultMessage = lens _pinpointCampaignMessageConfigurationDefaultMessage (\s a -> s { _pinpointCampaignMessageConfigurationDefaultMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-emailmessage
pcmcEmailMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignCampaignEmailMessage)
pcmcEmailMessage = lens _pinpointCampaignMessageConfigurationEmailMessage (\s a -> s { _pinpointCampaignMessageConfigurationEmailMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-gcmmessage
pcmcGCMMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignMessage)
pcmcGCMMessage = lens _pinpointCampaignMessageConfigurationGCMMessage (\s a -> s { _pinpointCampaignMessageConfigurationGCMMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-smsmessage
pcmcSMSMessage :: Lens' PinpointCampaignMessageConfiguration (Maybe PinpointCampaignCampaignSmsMessage)
pcmcSMSMessage = lens _pinpointCampaignMessageConfigurationSMSMessage (\s a -> s { _pinpointCampaignMessageConfigurationSMSMessage = a })
