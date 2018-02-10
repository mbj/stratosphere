{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html

module Stratosphere.ResourceProperties.SSMPatchBaselinePatchFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMPatchBaselinePatchFilter. See
-- 'ssmPatchBaselinePatchFilter' for a more convenient constructor.
data SSMPatchBaselinePatchFilter =
  SSMPatchBaselinePatchFilter
  { _sSMPatchBaselinePatchFilterKey :: Maybe (Val Text)
  , _sSMPatchBaselinePatchFilterValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SSMPatchBaselinePatchFilter where
  toJSON SSMPatchBaselinePatchFilter{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _sSMPatchBaselinePatchFilterKey
    , fmap (("Values",) . toJSON) _sSMPatchBaselinePatchFilterValues
    ]

instance FromJSON SSMPatchBaselinePatchFilter where
  parseJSON (Object obj) =
    SSMPatchBaselinePatchFilter <$>
      (obj .:? "Key") <*>
      (obj .:? "Values")
  parseJSON _ = mempty

-- | Constructor for 'SSMPatchBaselinePatchFilter' containing required fields
-- as arguments.
ssmPatchBaselinePatchFilter
  :: SSMPatchBaselinePatchFilter
ssmPatchBaselinePatchFilter  =
  SSMPatchBaselinePatchFilter
  { _sSMPatchBaselinePatchFilterKey = Nothing
  , _sSMPatchBaselinePatchFilterValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-key
ssmpbpfKey :: Lens' SSMPatchBaselinePatchFilter (Maybe (Val Text))
ssmpbpfKey = lens _sSMPatchBaselinePatchFilterKey (\s a -> s { _sSMPatchBaselinePatchFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-values
ssmpbpfValues :: Lens' SSMPatchBaselinePatchFilter (Maybe (ValList Text))
ssmpbpfValues = lens _sSMPatchBaselinePatchFilterValues (\s a -> s { _sSMPatchBaselinePatchFilterValues = a })
