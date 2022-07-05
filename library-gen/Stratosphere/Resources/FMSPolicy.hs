{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html

module Stratosphere.Resources.FMSPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.FMSPolicyIEMap
import Stratosphere.ResourceProperties.FMSPolicyResourceTag
import Stratosphere.ResourceProperties.FMSPolicyPolicyTag

-- | Full data type definition for FMSPolicy. See 'fmsPolicy' for a more
-- convenient constructor.
data FMSPolicy =
  FMSPolicy
  { _fMSPolicyDeleteAllPolicyResources :: Maybe (Val Bool)
  , _fMSPolicyExcludeMap :: Maybe FMSPolicyIEMap
  , _fMSPolicyExcludeResourceTags :: Val Bool
  , _fMSPolicyIncludeMap :: Maybe FMSPolicyIEMap
  , _fMSPolicyPolicyName :: Val Text
  , _fMSPolicyRemediationEnabled :: Val Bool
  , _fMSPolicyResourceTags :: Maybe [FMSPolicyResourceTag]
  , _fMSPolicyResourceType :: Val Text
  , _fMSPolicyResourceTypeList :: Maybe (ValList Text)
  , _fMSPolicySecurityServicePolicyData :: Object
  , _fMSPolicyTags :: Maybe [FMSPolicyPolicyTag]
  } deriving (Show, Eq)

instance ToResourceProperties FMSPolicy where
  toResourceProperties FMSPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::FMS::Policy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeleteAllPolicyResources",) . toJSON) _fMSPolicyDeleteAllPolicyResources
        , fmap (("ExcludeMap",) . toJSON) _fMSPolicyExcludeMap
        , (Just . ("ExcludeResourceTags",) . toJSON) _fMSPolicyExcludeResourceTags
        , fmap (("IncludeMap",) . toJSON) _fMSPolicyIncludeMap
        , (Just . ("PolicyName",) . toJSON) _fMSPolicyPolicyName
        , (Just . ("RemediationEnabled",) . toJSON) _fMSPolicyRemediationEnabled
        , fmap (("ResourceTags",) . toJSON) _fMSPolicyResourceTags
        , (Just . ("ResourceType",) . toJSON) _fMSPolicyResourceType
        , fmap (("ResourceTypeList",) . toJSON) _fMSPolicyResourceTypeList
        , (Just . ("SecurityServicePolicyData",) . toJSON) _fMSPolicySecurityServicePolicyData
        , fmap (("Tags",) . toJSON) _fMSPolicyTags
        ]
    }

-- | Constructor for 'FMSPolicy' containing required fields as arguments.
fmsPolicy
  :: Val Bool -- ^ 'fmspExcludeResourceTags'
  -> Val Text -- ^ 'fmspPolicyName'
  -> Val Bool -- ^ 'fmspRemediationEnabled'
  -> Val Text -- ^ 'fmspResourceType'
  -> Object -- ^ 'fmspSecurityServicePolicyData'
  -> FMSPolicy
fmsPolicy excludeResourceTagsarg policyNamearg remediationEnabledarg resourceTypearg securityServicePolicyDataarg =
  FMSPolicy
  { _fMSPolicyDeleteAllPolicyResources = Nothing
  , _fMSPolicyExcludeMap = Nothing
  , _fMSPolicyExcludeResourceTags = excludeResourceTagsarg
  , _fMSPolicyIncludeMap = Nothing
  , _fMSPolicyPolicyName = policyNamearg
  , _fMSPolicyRemediationEnabled = remediationEnabledarg
  , _fMSPolicyResourceTags = Nothing
  , _fMSPolicyResourceType = resourceTypearg
  , _fMSPolicyResourceTypeList = Nothing
  , _fMSPolicySecurityServicePolicyData = securityServicePolicyDataarg
  , _fMSPolicyTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-deleteallpolicyresources
fmspDeleteAllPolicyResources :: Lens' FMSPolicy (Maybe (Val Bool))
fmspDeleteAllPolicyResources = lens _fMSPolicyDeleteAllPolicyResources (\s a -> s { _fMSPolicyDeleteAllPolicyResources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-excludemap
fmspExcludeMap :: Lens' FMSPolicy (Maybe FMSPolicyIEMap)
fmspExcludeMap = lens _fMSPolicyExcludeMap (\s a -> s { _fMSPolicyExcludeMap = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-excluderesourcetags
fmspExcludeResourceTags :: Lens' FMSPolicy (Val Bool)
fmspExcludeResourceTags = lens _fMSPolicyExcludeResourceTags (\s a -> s { _fMSPolicyExcludeResourceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-includemap
fmspIncludeMap :: Lens' FMSPolicy (Maybe FMSPolicyIEMap)
fmspIncludeMap = lens _fMSPolicyIncludeMap (\s a -> s { _fMSPolicyIncludeMap = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-policyname
fmspPolicyName :: Lens' FMSPolicy (Val Text)
fmspPolicyName = lens _fMSPolicyPolicyName (\s a -> s { _fMSPolicyPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-remediationenabled
fmspRemediationEnabled :: Lens' FMSPolicy (Val Bool)
fmspRemediationEnabled = lens _fMSPolicyRemediationEnabled (\s a -> s { _fMSPolicyRemediationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-resourcetags
fmspResourceTags :: Lens' FMSPolicy (Maybe [FMSPolicyResourceTag])
fmspResourceTags = lens _fMSPolicyResourceTags (\s a -> s { _fMSPolicyResourceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-resourcetype
fmspResourceType :: Lens' FMSPolicy (Val Text)
fmspResourceType = lens _fMSPolicyResourceType (\s a -> s { _fMSPolicyResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-resourcetypelist
fmspResourceTypeList :: Lens' FMSPolicy (Maybe (ValList Text))
fmspResourceTypeList = lens _fMSPolicyResourceTypeList (\s a -> s { _fMSPolicyResourceTypeList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-securityservicepolicydata
fmspSecurityServicePolicyData :: Lens' FMSPolicy Object
fmspSecurityServicePolicyData = lens _fMSPolicySecurityServicePolicyData (\s a -> s { _fMSPolicySecurityServicePolicyData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-policy.html#cfn-fms-policy-tags
fmspTags :: Lens' FMSPolicy (Maybe [FMSPolicyPolicyTag])
fmspTags = lens _fMSPolicyTags (\s a -> s { _fMSPolicyTags = a })
