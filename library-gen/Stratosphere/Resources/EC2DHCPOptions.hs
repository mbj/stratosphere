{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html

module Stratosphere.Resources.EC2DHCPOptions where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2DHCPOptions. See 'ec2DHCPOptions' for a
-- | more convenient constructor.
data EC2DHCPOptions =
  EC2DHCPOptions
  { _eC2DHCPOptionsDomainName :: Maybe (Val Text)
  , _eC2DHCPOptionsDomainNameServers :: Maybe [Val Text]
  , _eC2DHCPOptionsNetbiosNameServers :: Maybe [Val Text]
  , _eC2DHCPOptionsNetbiosNodeType :: Maybe (Val Integer')
  , _eC2DHCPOptionsNtpServers :: Maybe (Val Text)
  , _eC2DHCPOptionsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2DHCPOptions where
  toJSON EC2DHCPOptions{..} =
    object
    [ "DomainName" .= _eC2DHCPOptionsDomainName
    , "DomainNameServers" .= _eC2DHCPOptionsDomainNameServers
    , "NetbiosNameServers" .= _eC2DHCPOptionsNetbiosNameServers
    , "NetbiosNodeType" .= _eC2DHCPOptionsNetbiosNodeType
    , "NtpServers" .= _eC2DHCPOptionsNtpServers
    , "Tags" .= _eC2DHCPOptionsTags
    ]

instance FromJSON EC2DHCPOptions where
  parseJSON (Object obj) =
    EC2DHCPOptions <$>
      obj .: "DomainName" <*>
      obj .: "DomainNameServers" <*>
      obj .: "NetbiosNameServers" <*>
      obj .: "NetbiosNodeType" <*>
      obj .: "NtpServers" <*>
      obj .: "Tags"
  parseJSON _ = mempty

-- | Constructor for 'EC2DHCPOptions' containing required fields as arguments.
ec2DHCPOptions
  :: EC2DHCPOptions
ec2DHCPOptions  =
  EC2DHCPOptions
  { _eC2DHCPOptionsDomainName = Nothing
  , _eC2DHCPOptionsDomainNameServers = Nothing
  , _eC2DHCPOptionsNetbiosNameServers = Nothing
  , _eC2DHCPOptionsNetbiosNodeType = Nothing
  , _eC2DHCPOptionsNtpServers = Nothing
  , _eC2DHCPOptionsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-domainname
ecdhcpoDomainName :: Lens' EC2DHCPOptions (Maybe (Val Text))
ecdhcpoDomainName = lens _eC2DHCPOptionsDomainName (\s a -> s { _eC2DHCPOptionsDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-domainnameservers
ecdhcpoDomainNameServers :: Lens' EC2DHCPOptions (Maybe [Val Text])
ecdhcpoDomainNameServers = lens _eC2DHCPOptionsDomainNameServers (\s a -> s { _eC2DHCPOptionsDomainNameServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-netbiosnameservers
ecdhcpoNetbiosNameServers :: Lens' EC2DHCPOptions (Maybe [Val Text])
ecdhcpoNetbiosNameServers = lens _eC2DHCPOptionsNetbiosNameServers (\s a -> s { _eC2DHCPOptionsNetbiosNameServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-netbiosnodetype
ecdhcpoNetbiosNodeType :: Lens' EC2DHCPOptions (Maybe (Val Integer'))
ecdhcpoNetbiosNodeType = lens _eC2DHCPOptionsNetbiosNodeType (\s a -> s { _eC2DHCPOptionsNetbiosNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-ntpservers
ecdhcpoNtpServers :: Lens' EC2DHCPOptions (Maybe (Val Text))
ecdhcpoNtpServers = lens _eC2DHCPOptionsNtpServers (\s a -> s { _eC2DHCPOptionsNtpServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-tags
ecdhcpoTags :: Lens' EC2DHCPOptions (Maybe [Tag])
ecdhcpoTags = lens _eC2DHCPOptionsTags (\s a -> s { _eC2DHCPOptionsTags = a })
