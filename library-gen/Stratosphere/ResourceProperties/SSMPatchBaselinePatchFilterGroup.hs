{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html

module Stratosphere.ResourceProperties.SSMPatchBaselinePatchFilterGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.SSMPatchBaselinePatchFilter

-- | Full data type definition for SSMPatchBaselinePatchFilterGroup. See
-- 'ssmPatchBaselinePatchFilterGroup' for a more convenient constructor.
data SSMPatchBaselinePatchFilterGroup =
  SSMPatchBaselinePatchFilterGroup
  { _sSMPatchBaselinePatchFilterGroupPatchFilters :: Maybe [SSMPatchBaselinePatchFilter]
  } deriving (Show, Eq)

instance ToJSON SSMPatchBaselinePatchFilterGroup where
  toJSON SSMPatchBaselinePatchFilterGroup{..} =
    object $
    catMaybes
    [ fmap (("PatchFilters",) . toJSON) _sSMPatchBaselinePatchFilterGroupPatchFilters
    ]

instance FromJSON SSMPatchBaselinePatchFilterGroup where
  parseJSON (Object obj) =
    SSMPatchBaselinePatchFilterGroup <$>
      (obj .:? "PatchFilters")
  parseJSON _ = mempty

-- | Constructor for 'SSMPatchBaselinePatchFilterGroup' containing required
-- fields as arguments.
ssmPatchBaselinePatchFilterGroup
  :: SSMPatchBaselinePatchFilterGroup
ssmPatchBaselinePatchFilterGroup  =
  SSMPatchBaselinePatchFilterGroup
  { _sSMPatchBaselinePatchFilterGroupPatchFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html#cfn-ssm-patchbaseline-patchfiltergroup-patchfilters
ssmpbpfgPatchFilters :: Lens' SSMPatchBaselinePatchFilterGroup (Maybe [SSMPatchBaselinePatchFilter])
ssmpbpfgPatchFilters = lens _sSMPatchBaselinePatchFilterGroupPatchFilters (\s a -> s { _sSMPatchBaselinePatchFilterGroupPatchFilters = a })
