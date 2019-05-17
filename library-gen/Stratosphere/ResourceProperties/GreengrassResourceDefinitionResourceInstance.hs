{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDataContainer

-- | Full data type definition for
-- GreengrassResourceDefinitionResourceInstance. See
-- 'greengrassResourceDefinitionResourceInstance' for a more convenient
-- constructor.
data GreengrassResourceDefinitionResourceInstance =
  GreengrassResourceDefinitionResourceInstance
  { _greengrassResourceDefinitionResourceInstanceId :: Val Text
  , _greengrassResourceDefinitionResourceInstanceName :: Val Text
  , _greengrassResourceDefinitionResourceInstanceResourceDataContainer :: GreengrassResourceDefinitionResourceDataContainer
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionResourceInstance where
  toJSON GreengrassResourceDefinitionResourceInstance{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _greengrassResourceDefinitionResourceInstanceId
    , (Just . ("Name",) . toJSON) _greengrassResourceDefinitionResourceInstanceName
    , (Just . ("ResourceDataContainer",) . toJSON) _greengrassResourceDefinitionResourceInstanceResourceDataContainer
    ]

-- | Constructor for 'GreengrassResourceDefinitionResourceInstance' containing
-- required fields as arguments.
greengrassResourceDefinitionResourceInstance
  :: Val Text -- ^ 'grdriId'
  -> Val Text -- ^ 'grdriName'
  -> GreengrassResourceDefinitionResourceDataContainer -- ^ 'grdriResourceDataContainer'
  -> GreengrassResourceDefinitionResourceInstance
greengrassResourceDefinitionResourceInstance idarg namearg resourceDataContainerarg =
  GreengrassResourceDefinitionResourceInstance
  { _greengrassResourceDefinitionResourceInstanceId = idarg
  , _greengrassResourceDefinitionResourceInstanceName = namearg
  , _greengrassResourceDefinitionResourceInstanceResourceDataContainer = resourceDataContainerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-id
grdriId :: Lens' GreengrassResourceDefinitionResourceInstance (Val Text)
grdriId = lens _greengrassResourceDefinitionResourceInstanceId (\s a -> s { _greengrassResourceDefinitionResourceInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-name
grdriName :: Lens' GreengrassResourceDefinitionResourceInstance (Val Text)
grdriName = lens _greengrassResourceDefinitionResourceInstanceName (\s a -> s { _greengrassResourceDefinitionResourceInstanceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-resourcedatacontainer
grdriResourceDataContainer :: Lens' GreengrassResourceDefinitionResourceInstance GreengrassResourceDefinitionResourceDataContainer
grdriResourceDataContainer = lens _greengrassResourceDefinitionResourceInstanceResourceDataContainer (\s a -> s { _greengrassResourceDefinitionResourceInstanceResourceDataContainer = a })
