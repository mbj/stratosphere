{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionResourceInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionResourceDataContainer

-- | Full data type definition for
-- GreengrassResourceDefinitionVersionResourceInstance. See
-- 'greengrassResourceDefinitionVersionResourceInstance' for a more
-- convenient constructor.
data GreengrassResourceDefinitionVersionResourceInstance =
  GreengrassResourceDefinitionVersionResourceInstance
  { _greengrassResourceDefinitionVersionResourceInstanceId :: Val Text
  , _greengrassResourceDefinitionVersionResourceInstanceName :: Val Text
  , _greengrassResourceDefinitionVersionResourceInstanceResourceDataContainer :: GreengrassResourceDefinitionVersionResourceDataContainer
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionResourceInstance where
  toJSON GreengrassResourceDefinitionVersionResourceInstance{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _greengrassResourceDefinitionVersionResourceInstanceId
    , (Just . ("Name",) . toJSON) _greengrassResourceDefinitionVersionResourceInstanceName
    , (Just . ("ResourceDataContainer",) . toJSON) _greengrassResourceDefinitionVersionResourceInstanceResourceDataContainer
    ]

-- | Constructor for 'GreengrassResourceDefinitionVersionResourceInstance'
-- containing required fields as arguments.
greengrassResourceDefinitionVersionResourceInstance
  :: Val Text -- ^ 'grdvriId'
  -> Val Text -- ^ 'grdvriName'
  -> GreengrassResourceDefinitionVersionResourceDataContainer -- ^ 'grdvriResourceDataContainer'
  -> GreengrassResourceDefinitionVersionResourceInstance
greengrassResourceDefinitionVersionResourceInstance idarg namearg resourceDataContainerarg =
  GreengrassResourceDefinitionVersionResourceInstance
  { _greengrassResourceDefinitionVersionResourceInstanceId = idarg
  , _greengrassResourceDefinitionVersionResourceInstanceName = namearg
  , _greengrassResourceDefinitionVersionResourceInstanceResourceDataContainer = resourceDataContainerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-id
grdvriId :: Lens' GreengrassResourceDefinitionVersionResourceInstance (Val Text)
grdvriId = lens _greengrassResourceDefinitionVersionResourceInstanceId (\s a -> s { _greengrassResourceDefinitionVersionResourceInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-name
grdvriName :: Lens' GreengrassResourceDefinitionVersionResourceInstance (Val Text)
grdvriName = lens _greengrassResourceDefinitionVersionResourceInstanceName (\s a -> s { _greengrassResourceDefinitionVersionResourceInstanceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-resourcedatacontainer
grdvriResourceDataContainer :: Lens' GreengrassResourceDefinitionVersionResourceInstance GreengrassResourceDefinitionVersionResourceDataContainer
grdvriResourceDataContainer = lens _greengrassResourceDefinitionVersionResourceInstanceResourceDataContainer (\s a -> s { _greengrassResourceDefinitionVersionResourceInstanceResourceDataContainer = a })
