
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionRunAs where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassFunctionDefinitionRunAs. See
-- 'greengrassFunctionDefinitionRunAs' for a more convenient constructor.
data GreengrassFunctionDefinitionRunAs =
  GreengrassFunctionDefinitionRunAs
  { _greengrassFunctionDefinitionRunAsGid :: Maybe (Val Integer)
  , _greengrassFunctionDefinitionRunAsUid :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionRunAs where
  toJSON GreengrassFunctionDefinitionRunAs{..} =
    object $
    catMaybes
    [ fmap (("Gid",) . toJSON) _greengrassFunctionDefinitionRunAsGid
    , fmap (("Uid",) . toJSON) _greengrassFunctionDefinitionRunAsUid
    ]

-- | Constructor for 'GreengrassFunctionDefinitionRunAs' containing required
-- fields as arguments.
greengrassFunctionDefinitionRunAs
  :: GreengrassFunctionDefinitionRunAs
greengrassFunctionDefinitionRunAs  =
  GreengrassFunctionDefinitionRunAs
  { _greengrassFunctionDefinitionRunAsGid = Nothing
  , _greengrassFunctionDefinitionRunAsUid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html#cfn-greengrass-functiondefinition-runas-gid
gfdraGid :: Lens' GreengrassFunctionDefinitionRunAs (Maybe (Val Integer))
gfdraGid = lens _greengrassFunctionDefinitionRunAsGid (\s a -> s { _greengrassFunctionDefinitionRunAsGid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html#cfn-greengrass-functiondefinition-runas-uid
gfdraUid :: Lens' GreengrassFunctionDefinitionRunAs (Maybe (Val Integer))
gfdraUid = lens _greengrassFunctionDefinitionRunAsUid (\s a -> s { _greengrassFunctionDefinitionRunAsUid = a })
