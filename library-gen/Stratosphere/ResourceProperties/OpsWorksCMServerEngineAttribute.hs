
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html

module Stratosphere.ResourceProperties.OpsWorksCMServerEngineAttribute where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksCMServerEngineAttribute. See
-- 'opsWorksCMServerEngineAttribute' for a more convenient constructor.
data OpsWorksCMServerEngineAttribute =
  OpsWorksCMServerEngineAttribute
  { _opsWorksCMServerEngineAttributeName :: Maybe (Val Text)
  , _opsWorksCMServerEngineAttributeValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksCMServerEngineAttribute where
  toJSON OpsWorksCMServerEngineAttribute{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _opsWorksCMServerEngineAttributeName
    , fmap (("Value",) . toJSON) _opsWorksCMServerEngineAttributeValue
    ]

-- | Constructor for 'OpsWorksCMServerEngineAttribute' containing required
-- fields as arguments.
opsWorksCMServerEngineAttribute
  :: OpsWorksCMServerEngineAttribute
opsWorksCMServerEngineAttribute  =
  OpsWorksCMServerEngineAttribute
  { _opsWorksCMServerEngineAttributeName = Nothing
  , _opsWorksCMServerEngineAttributeValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-name
owcmseaName :: Lens' OpsWorksCMServerEngineAttribute (Maybe (Val Text))
owcmseaName = lens _opsWorksCMServerEngineAttributeName (\s a -> s { _opsWorksCMServerEngineAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-value
owcmseaValue :: Lens' OpsWorksCMServerEngineAttribute (Maybe (Val Text))
owcmseaValue = lens _opsWorksCMServerEngineAttributeValue (\s a -> s { _opsWorksCMServerEngineAttributeValue = a })
