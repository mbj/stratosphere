{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html

module Stratosphere.ResourceProperties.AppStreamImageBuilderDomainJoinInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamImageBuilderDomainJoinInfo. See
-- 'appStreamImageBuilderDomainJoinInfo' for a more convenient constructor.
data AppStreamImageBuilderDomainJoinInfo =
  AppStreamImageBuilderDomainJoinInfo
  { _appStreamImageBuilderDomainJoinInfoDirectoryName :: Maybe (Val Text)
  , _appStreamImageBuilderDomainJoinInfoOrganizationalUnitDistinguishedName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppStreamImageBuilderDomainJoinInfo where
  toJSON AppStreamImageBuilderDomainJoinInfo{..} =
    object $
    catMaybes
    [ fmap (("DirectoryName",) . toJSON) _appStreamImageBuilderDomainJoinInfoDirectoryName
    , fmap (("OrganizationalUnitDistinguishedName",) . toJSON) _appStreamImageBuilderDomainJoinInfoOrganizationalUnitDistinguishedName
    ]

-- | Constructor for 'AppStreamImageBuilderDomainJoinInfo' containing required
-- fields as arguments.
appStreamImageBuilderDomainJoinInfo
  :: AppStreamImageBuilderDomainJoinInfo
appStreamImageBuilderDomainJoinInfo  =
  AppStreamImageBuilderDomainJoinInfo
  { _appStreamImageBuilderDomainJoinInfoDirectoryName = Nothing
  , _appStreamImageBuilderDomainJoinInfoOrganizationalUnitDistinguishedName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-directoryname
asibdjiDirectoryName :: Lens' AppStreamImageBuilderDomainJoinInfo (Maybe (Val Text))
asibdjiDirectoryName = lens _appStreamImageBuilderDomainJoinInfoDirectoryName (\s a -> s { _appStreamImageBuilderDomainJoinInfoDirectoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-organizationalunitdistinguishedname
asibdjiOrganizationalUnitDistinguishedName :: Lens' AppStreamImageBuilderDomainJoinInfo (Maybe (Val Text))
asibdjiOrganizationalUnitDistinguishedName = lens _appStreamImageBuilderDomainJoinInfoOrganizationalUnitDistinguishedName (\s a -> s { _appStreamImageBuilderDomainJoinInfoOrganizationalUnitDistinguishedName = a })
