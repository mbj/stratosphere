
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html

module Stratosphere.ResourceProperties.SSMPatchBaselinePatchSource where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SSMPatchBaselinePatchSource. See
-- 'ssmPatchBaselinePatchSource' for a more convenient constructor.
data SSMPatchBaselinePatchSource =
  SSMPatchBaselinePatchSource
  { _sSMPatchBaselinePatchSourceConfiguration :: Maybe (Val Text)
  , _sSMPatchBaselinePatchSourceName :: Maybe (Val Text)
  , _sSMPatchBaselinePatchSourceProducts :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SSMPatchBaselinePatchSource where
  toJSON SSMPatchBaselinePatchSource{..} =
    object $
    catMaybes
    [ fmap (("Configuration",) . toJSON) _sSMPatchBaselinePatchSourceConfiguration
    , fmap (("Name",) . toJSON) _sSMPatchBaselinePatchSourceName
    , fmap (("Products",) . toJSON) _sSMPatchBaselinePatchSourceProducts
    ]

-- | Constructor for 'SSMPatchBaselinePatchSource' containing required fields
-- as arguments.
ssmPatchBaselinePatchSource
  :: SSMPatchBaselinePatchSource
ssmPatchBaselinePatchSource  =
  SSMPatchBaselinePatchSource
  { _sSMPatchBaselinePatchSourceConfiguration = Nothing
  , _sSMPatchBaselinePatchSourceName = Nothing
  , _sSMPatchBaselinePatchSourceProducts = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html#cfn-ssm-patchbaseline-patchsource-configuration
ssmpbpsConfiguration :: Lens' SSMPatchBaselinePatchSource (Maybe (Val Text))
ssmpbpsConfiguration = lens _sSMPatchBaselinePatchSourceConfiguration (\s a -> s { _sSMPatchBaselinePatchSourceConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html#cfn-ssm-patchbaseline-patchsource-name
ssmpbpsName :: Lens' SSMPatchBaselinePatchSource (Maybe (Val Text))
ssmpbpsName = lens _sSMPatchBaselinePatchSourceName (\s a -> s { _sSMPatchBaselinePatchSourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html#cfn-ssm-patchbaseline-patchsource-products
ssmpbpsProducts :: Lens' SSMPatchBaselinePatchSource (Maybe (ValList Text))
ssmpbpsProducts = lens _sSMPatchBaselinePatchSourceProducts (\s a -> s { _sSMPatchBaselinePatchSourceProducts = a })
