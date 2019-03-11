{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-domainjoininfo.html

module Stratosphere.ResourceProperties.AppStreamFleetDomainJoinInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamFleetDomainJoinInfo. See
-- 'appStreamFleetDomainJoinInfo' for a more convenient constructor.
data AppStreamFleetDomainJoinInfo =
  AppStreamFleetDomainJoinInfo
  { _appStreamFleetDomainJoinInfoDirectoryName :: Maybe (Val Text)
  , _appStreamFleetDomainJoinInfoOrganizationalUnitDistinguishedName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppStreamFleetDomainJoinInfo where
  toJSON AppStreamFleetDomainJoinInfo{..} =
    object $
    catMaybes
    [ fmap (("DirectoryName",) . toJSON) _appStreamFleetDomainJoinInfoDirectoryName
    , fmap (("OrganizationalUnitDistinguishedName",) . toJSON) _appStreamFleetDomainJoinInfoOrganizationalUnitDistinguishedName
    ]

-- | Constructor for 'AppStreamFleetDomainJoinInfo' containing required fields
-- as arguments.
appStreamFleetDomainJoinInfo
  :: AppStreamFleetDomainJoinInfo
appStreamFleetDomainJoinInfo  =
  AppStreamFleetDomainJoinInfo
  { _appStreamFleetDomainJoinInfoDirectoryName = Nothing
  , _appStreamFleetDomainJoinInfoOrganizationalUnitDistinguishedName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-domainjoininfo.html#cfn-appstream-fleet-domainjoininfo-directoryname
asfdjiDirectoryName :: Lens' AppStreamFleetDomainJoinInfo (Maybe (Val Text))
asfdjiDirectoryName = lens _appStreamFleetDomainJoinInfoDirectoryName (\s a -> s { _appStreamFleetDomainJoinInfoDirectoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-domainjoininfo.html#cfn-appstream-fleet-domainjoininfo-organizationalunitdistinguishedname
asfdjiOrganizationalUnitDistinguishedName :: Lens' AppStreamFleetDomainJoinInfo (Maybe (Val Text))
asfdjiOrganizationalUnitDistinguishedName = lens _appStreamFleetDomainJoinInfoOrganizationalUnitDistinguishedName (\s a -> s { _appStreamFleetDomainJoinInfoOrganizationalUnitDistinguishedName = a })
