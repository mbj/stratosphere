{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html

module Stratosphere.Resources.EC2DHCPOptions where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2DHCPOptions. See 'ec2DHCPOptions' for a
-- more convenient constructor.
data EC2DHCPOptions =
  EC2DHCPOptions
  { _eC2DHCPOptionsDomainName :: Maybe (Val Text)
  , _eC2DHCPOptionsDomainNameServers :: Maybe (ValList Text)
  , _eC2DHCPOptionsNetbiosNameServers :: Maybe (ValList Text)
  , _eC2DHCPOptionsNetbiosNodeType :: Maybe (Val Integer)
  , _eC2DHCPOptionsNtpServers :: Maybe (ValList Text)
  , _eC2DHCPOptionsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EC2DHCPOptions where
  toResourceProperties EC2DHCPOptions{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::DHCPOptions"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DomainName",) . toJSON) _eC2DHCPOptionsDomainName
        , fmap (("DomainNameServers",) . toJSON) _eC2DHCPOptionsDomainNameServers
        , fmap (("NetbiosNameServers",) . toJSON) _eC2DHCPOptionsNetbiosNameServers
        , fmap (("NetbiosNodeType",) . toJSON) _eC2DHCPOptionsNetbiosNodeType
        , fmap (("NtpServers",) . toJSON) _eC2DHCPOptionsNtpServers
        , fmap (("Tags",) . toJSON) _eC2DHCPOptionsTags
        ]
    }

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
ecdhcpoDomainNameServers :: Lens' EC2DHCPOptions (Maybe (ValList Text))
ecdhcpoDomainNameServers = lens _eC2DHCPOptionsDomainNameServers (\s a -> s { _eC2DHCPOptionsDomainNameServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-netbiosnameservers
ecdhcpoNetbiosNameServers :: Lens' EC2DHCPOptions (Maybe (ValList Text))
ecdhcpoNetbiosNameServers = lens _eC2DHCPOptionsNetbiosNameServers (\s a -> s { _eC2DHCPOptionsNetbiosNameServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-netbiosnodetype
ecdhcpoNetbiosNodeType :: Lens' EC2DHCPOptions (Maybe (Val Integer))
ecdhcpoNetbiosNodeType = lens _eC2DHCPOptionsNetbiosNodeType (\s a -> s { _eC2DHCPOptionsNetbiosNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-ntpservers
ecdhcpoNtpServers :: Lens' EC2DHCPOptions (Maybe (ValList Text))
ecdhcpoNtpServers = lens _eC2DHCPOptionsNtpServers (\s a -> s { _eC2DHCPOptionsNtpServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-tags
ecdhcpoTags :: Lens' EC2DHCPOptions (Maybe [Tag])
ecdhcpoTags = lens _eC2DHCPOptionsTags (\s a -> s { _eC2DHCPOptionsTags = a })
