
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html

module Stratosphere.ResourceProperties.SSMResourceDataSyncSyncSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMResourceDataSyncAwsOrganizationsSource

-- | Full data type definition for SSMResourceDataSyncSyncSource. See
-- 'ssmResourceDataSyncSyncSource' for a more convenient constructor.
data SSMResourceDataSyncSyncSource =
  SSMResourceDataSyncSyncSource
  { _sSMResourceDataSyncSyncSourceAwsOrganizationsSource :: Maybe SSMResourceDataSyncAwsOrganizationsSource
  , _sSMResourceDataSyncSyncSourceIncludeFutureRegions :: Maybe (Val Bool)
  , _sSMResourceDataSyncSyncSourceSourceRegions :: ValList Text
  , _sSMResourceDataSyncSyncSourceSourceType :: Val Text
  } deriving (Show, Eq)

instance ToJSON SSMResourceDataSyncSyncSource where
  toJSON SSMResourceDataSyncSyncSource{..} =
    object $
    catMaybes
    [ fmap (("AwsOrganizationsSource",) . toJSON) _sSMResourceDataSyncSyncSourceAwsOrganizationsSource
    , fmap (("IncludeFutureRegions",) . toJSON) _sSMResourceDataSyncSyncSourceIncludeFutureRegions
    , (Just . ("SourceRegions",) . toJSON) _sSMResourceDataSyncSyncSourceSourceRegions
    , (Just . ("SourceType",) . toJSON) _sSMResourceDataSyncSyncSourceSourceType
    ]

-- | Constructor for 'SSMResourceDataSyncSyncSource' containing required
-- fields as arguments.
ssmResourceDataSyncSyncSource
  :: ValList Text -- ^ 'ssmrdsssSourceRegions'
  -> Val Text -- ^ 'ssmrdsssSourceType'
  -> SSMResourceDataSyncSyncSource
ssmResourceDataSyncSyncSource sourceRegionsarg sourceTypearg =
  SSMResourceDataSyncSyncSource
  { _sSMResourceDataSyncSyncSourceAwsOrganizationsSource = Nothing
  , _sSMResourceDataSyncSyncSourceIncludeFutureRegions = Nothing
  , _sSMResourceDataSyncSyncSourceSourceRegions = sourceRegionsarg
  , _sSMResourceDataSyncSyncSourceSourceType = sourceTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-awsorganizationssource
ssmrdsssAwsOrganizationsSource :: Lens' SSMResourceDataSyncSyncSource (Maybe SSMResourceDataSyncAwsOrganizationsSource)
ssmrdsssAwsOrganizationsSource = lens _sSMResourceDataSyncSyncSourceAwsOrganizationsSource (\s a -> s { _sSMResourceDataSyncSyncSourceAwsOrganizationsSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-includefutureregions
ssmrdsssIncludeFutureRegions :: Lens' SSMResourceDataSyncSyncSource (Maybe (Val Bool))
ssmrdsssIncludeFutureRegions = lens _sSMResourceDataSyncSyncSourceIncludeFutureRegions (\s a -> s { _sSMResourceDataSyncSyncSourceIncludeFutureRegions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-sourceregions
ssmrdsssSourceRegions :: Lens' SSMResourceDataSyncSyncSource (ValList Text)
ssmrdsssSourceRegions = lens _sSMResourceDataSyncSyncSourceSourceRegions (\s a -> s { _sSMResourceDataSyncSyncSourceSourceRegions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-syncsource.html#cfn-ssm-resourcedatasync-syncsource-sourcetype
ssmrdsssSourceType :: Lens' SSMResourceDataSyncSyncSource (Val Text)
ssmrdsssSourceType = lens _sSMResourceDataSyncSyncSourceSourceType (\s a -> s { _sSMResourceDataSyncSyncSourceSourceType = a })
