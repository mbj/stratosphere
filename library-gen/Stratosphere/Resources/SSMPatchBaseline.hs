{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html

module Stratosphere.Resources.SSMPatchBaseline where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.SSMPatchBaselineRuleGroup
import Stratosphere.ResourceProperties.SSMPatchBaselinePatchFilterGroup

-- | Full data type definition for SSMPatchBaseline. See 'ssmPatchBaseline'
-- for a more convenient constructor.
data SSMPatchBaseline =
  SSMPatchBaseline
  { _sSMPatchBaselineApprovalRules :: Maybe SSMPatchBaselineRuleGroup
  , _sSMPatchBaselineApprovedPatches :: Maybe (ValList Text)
  , _sSMPatchBaselineApprovedPatchesComplianceLevel :: Maybe (Val Text)
  , _sSMPatchBaselineDescription :: Maybe (Val Text)
  , _sSMPatchBaselineGlobalFilters :: Maybe SSMPatchBaselinePatchFilterGroup
  , _sSMPatchBaselineName :: Val Text
  , _sSMPatchBaselineOperatingSystem :: Maybe (Val Text)
  , _sSMPatchBaselinePatchGroups :: Maybe (ValList Text)
  , _sSMPatchBaselineRejectedPatches :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SSMPatchBaseline where
  toJSON SSMPatchBaseline{..} =
    object $
    catMaybes
    [ fmap (("ApprovalRules",) . toJSON) _sSMPatchBaselineApprovalRules
    , fmap (("ApprovedPatches",) . toJSON) _sSMPatchBaselineApprovedPatches
    , fmap (("ApprovedPatchesComplianceLevel",) . toJSON) _sSMPatchBaselineApprovedPatchesComplianceLevel
    , fmap (("Description",) . toJSON) _sSMPatchBaselineDescription
    , fmap (("GlobalFilters",) . toJSON) _sSMPatchBaselineGlobalFilters
    , (Just . ("Name",) . toJSON) _sSMPatchBaselineName
    , fmap (("OperatingSystem",) . toJSON) _sSMPatchBaselineOperatingSystem
    , fmap (("PatchGroups",) . toJSON) _sSMPatchBaselinePatchGroups
    , fmap (("RejectedPatches",) . toJSON) _sSMPatchBaselineRejectedPatches
    ]

instance FromJSON SSMPatchBaseline where
  parseJSON (Object obj) =
    SSMPatchBaseline <$>
      (obj .:? "ApprovalRules") <*>
      (obj .:? "ApprovedPatches") <*>
      (obj .:? "ApprovedPatchesComplianceLevel") <*>
      (obj .:? "Description") <*>
      (obj .:? "GlobalFilters") <*>
      (obj .: "Name") <*>
      (obj .:? "OperatingSystem") <*>
      (obj .:? "PatchGroups") <*>
      (obj .:? "RejectedPatches")
  parseJSON _ = mempty

-- | Constructor for 'SSMPatchBaseline' containing required fields as
-- arguments.
ssmPatchBaseline
  :: Val Text -- ^ 'ssmpbName'
  -> SSMPatchBaseline
ssmPatchBaseline namearg =
  SSMPatchBaseline
  { _sSMPatchBaselineApprovalRules = Nothing
  , _sSMPatchBaselineApprovedPatches = Nothing
  , _sSMPatchBaselineApprovedPatchesComplianceLevel = Nothing
  , _sSMPatchBaselineDescription = Nothing
  , _sSMPatchBaselineGlobalFilters = Nothing
  , _sSMPatchBaselineName = namearg
  , _sSMPatchBaselineOperatingSystem = Nothing
  , _sSMPatchBaselinePatchGroups = Nothing
  , _sSMPatchBaselineRejectedPatches = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvalrules
ssmpbApprovalRules :: Lens' SSMPatchBaseline (Maybe SSMPatchBaselineRuleGroup)
ssmpbApprovalRules = lens _sSMPatchBaselineApprovalRules (\s a -> s { _sSMPatchBaselineApprovalRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvedpatches
ssmpbApprovedPatches :: Lens' SSMPatchBaseline (Maybe (ValList Text))
ssmpbApprovedPatches = lens _sSMPatchBaselineApprovedPatches (\s a -> s { _sSMPatchBaselineApprovedPatches = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvedpatchescompliancelevel
ssmpbApprovedPatchesComplianceLevel :: Lens' SSMPatchBaseline (Maybe (Val Text))
ssmpbApprovedPatchesComplianceLevel = lens _sSMPatchBaselineApprovedPatchesComplianceLevel (\s a -> s { _sSMPatchBaselineApprovedPatchesComplianceLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-description
ssmpbDescription :: Lens' SSMPatchBaseline (Maybe (Val Text))
ssmpbDescription = lens _sSMPatchBaselineDescription (\s a -> s { _sSMPatchBaselineDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-globalfilters
ssmpbGlobalFilters :: Lens' SSMPatchBaseline (Maybe SSMPatchBaselinePatchFilterGroup)
ssmpbGlobalFilters = lens _sSMPatchBaselineGlobalFilters (\s a -> s { _sSMPatchBaselineGlobalFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-name
ssmpbName :: Lens' SSMPatchBaseline (Val Text)
ssmpbName = lens _sSMPatchBaselineName (\s a -> s { _sSMPatchBaselineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-operatingsystem
ssmpbOperatingSystem :: Lens' SSMPatchBaseline (Maybe (Val Text))
ssmpbOperatingSystem = lens _sSMPatchBaselineOperatingSystem (\s a -> s { _sSMPatchBaselineOperatingSystem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-patchgroups
ssmpbPatchGroups :: Lens' SSMPatchBaseline (Maybe (ValList Text))
ssmpbPatchGroups = lens _sSMPatchBaselinePatchGroups (\s a -> s { _sSMPatchBaselinePatchGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-rejectedpatches
ssmpbRejectedPatches :: Lens' SSMPatchBaseline (Maybe (ValList Text))
ssmpbRejectedPatches = lens _sSMPatchBaselineRejectedPatches (\s a -> s { _sSMPatchBaselineRejectedPatches = a })
