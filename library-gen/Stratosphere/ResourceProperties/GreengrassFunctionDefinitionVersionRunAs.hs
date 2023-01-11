
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionRunAs where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassFunctionDefinitionVersionRunAs.
-- See 'greengrassFunctionDefinitionVersionRunAs' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionVersionRunAs =
  GreengrassFunctionDefinitionVersionRunAs
  { _greengrassFunctionDefinitionVersionRunAsGid :: Maybe (Val Integer)
  , _greengrassFunctionDefinitionVersionRunAsUid :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionRunAs where
  toJSON GreengrassFunctionDefinitionVersionRunAs{..} =
    object $
    catMaybes
    [ fmap (("Gid",) . toJSON) _greengrassFunctionDefinitionVersionRunAsGid
    , fmap (("Uid",) . toJSON) _greengrassFunctionDefinitionVersionRunAsUid
    ]

-- | Constructor for 'GreengrassFunctionDefinitionVersionRunAs' containing
-- required fields as arguments.
greengrassFunctionDefinitionVersionRunAs
  :: GreengrassFunctionDefinitionVersionRunAs
greengrassFunctionDefinitionVersionRunAs  =
  GreengrassFunctionDefinitionVersionRunAs
  { _greengrassFunctionDefinitionVersionRunAsGid = Nothing
  , _greengrassFunctionDefinitionVersionRunAsUid = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-gid
gfdvraGid :: Lens' GreengrassFunctionDefinitionVersionRunAs (Maybe (Val Integer))
gfdvraGid = lens _greengrassFunctionDefinitionVersionRunAsGid (\s a -> s { _greengrassFunctionDefinitionVersionRunAsGid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-uid
gfdvraUid :: Lens' GreengrassFunctionDefinitionVersionRunAs (Maybe (Val Integer))
gfdvraUid = lens _greengrassFunctionDefinitionVersionRunAsUid (\s a -> s { _greengrassFunctionDefinitionVersionRunAsUid = a })
