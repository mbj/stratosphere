{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html

module Stratosphere.ResourceProperties.SSMResourceDataSyncAwsOrganizationsSource where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMResourceDataSyncAwsOrganizationsSource.
-- See 'ssmResourceDataSyncAwsOrganizationsSource' for a more convenient
-- constructor.
data SSMResourceDataSyncAwsOrganizationsSource =
  SSMResourceDataSyncAwsOrganizationsSource
  { _sSMResourceDataSyncAwsOrganizationsSourceOrganizationSourceType :: Val Text
  , _sSMResourceDataSyncAwsOrganizationsSourceOrganizationalUnits :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SSMResourceDataSyncAwsOrganizationsSource where
  toJSON SSMResourceDataSyncAwsOrganizationsSource{..} =
    object $
    catMaybes
    [ (Just . ("OrganizationSourceType",) . toJSON) _sSMResourceDataSyncAwsOrganizationsSourceOrganizationSourceType
    , fmap (("OrganizationalUnits",) . toJSON) _sSMResourceDataSyncAwsOrganizationsSourceOrganizationalUnits
    ]

-- | Constructor for 'SSMResourceDataSyncAwsOrganizationsSource' containing
-- required fields as arguments.
ssmResourceDataSyncAwsOrganizationsSource
  :: Val Text -- ^ 'ssmrdsaosOrganizationSourceType'
  -> SSMResourceDataSyncAwsOrganizationsSource
ssmResourceDataSyncAwsOrganizationsSource organizationSourceTypearg =
  SSMResourceDataSyncAwsOrganizationsSource
  { _sSMResourceDataSyncAwsOrganizationsSourceOrganizationSourceType = organizationSourceTypearg
  , _sSMResourceDataSyncAwsOrganizationsSourceOrganizationalUnits = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html#cfn-ssm-resourcedatasync-awsorganizationssource-organizationsourcetype
ssmrdsaosOrganizationSourceType :: Lens' SSMResourceDataSyncAwsOrganizationsSource (Val Text)
ssmrdsaosOrganizationSourceType = lens _sSMResourceDataSyncAwsOrganizationsSourceOrganizationSourceType (\s a -> s { _sSMResourceDataSyncAwsOrganizationsSourceOrganizationSourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html#cfn-ssm-resourcedatasync-awsorganizationssource-organizationalunits
ssmrdsaosOrganizationalUnits :: Lens' SSMResourceDataSyncAwsOrganizationsSource (Maybe (ValList Text))
ssmrdsaosOrganizationalUnits = lens _sSMResourceDataSyncAwsOrganizationsSourceOrganizationalUnits (\s a -> s { _sSMResourceDataSyncAwsOrganizationsSourceOrganizationalUnits = a })
