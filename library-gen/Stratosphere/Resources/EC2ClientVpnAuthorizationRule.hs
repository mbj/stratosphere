{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html

module Stratosphere.Resources.EC2ClientVpnAuthorizationRule where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2ClientVpnAuthorizationRule. See
-- 'ec2ClientVpnAuthorizationRule' for a more convenient constructor.
data EC2ClientVpnAuthorizationRule =
  EC2ClientVpnAuthorizationRule
  { _eC2ClientVpnAuthorizationRuleAccessGroupId :: Maybe (Val Text)
  , _eC2ClientVpnAuthorizationRuleAuthorizeAllGroups :: Maybe (Val Bool)
  , _eC2ClientVpnAuthorizationRuleClientVpnEndpointId :: Val Text
  , _eC2ClientVpnAuthorizationRuleDescription :: Maybe (Val Text)
  , _eC2ClientVpnAuthorizationRuleTargetNetworkCidr :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2ClientVpnAuthorizationRule where
  toResourceProperties EC2ClientVpnAuthorizationRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::ClientVpnAuthorizationRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessGroupId",) . toJSON) _eC2ClientVpnAuthorizationRuleAccessGroupId
        , fmap (("AuthorizeAllGroups",) . toJSON) _eC2ClientVpnAuthorizationRuleAuthorizeAllGroups
        , (Just . ("ClientVpnEndpointId",) . toJSON) _eC2ClientVpnAuthorizationRuleClientVpnEndpointId
        , fmap (("Description",) . toJSON) _eC2ClientVpnAuthorizationRuleDescription
        , (Just . ("TargetNetworkCidr",) . toJSON) _eC2ClientVpnAuthorizationRuleTargetNetworkCidr
        ]
    }

-- | Constructor for 'EC2ClientVpnAuthorizationRule' containing required
-- fields as arguments.
ec2ClientVpnAuthorizationRule
  :: Val Text -- ^ 'eccvarClientVpnEndpointId'
  -> Val Text -- ^ 'eccvarTargetNetworkCidr'
  -> EC2ClientVpnAuthorizationRule
ec2ClientVpnAuthorizationRule clientVpnEndpointIdarg targetNetworkCidrarg =
  EC2ClientVpnAuthorizationRule
  { _eC2ClientVpnAuthorizationRuleAccessGroupId = Nothing
  , _eC2ClientVpnAuthorizationRuleAuthorizeAllGroups = Nothing
  , _eC2ClientVpnAuthorizationRuleClientVpnEndpointId = clientVpnEndpointIdarg
  , _eC2ClientVpnAuthorizationRuleDescription = Nothing
  , _eC2ClientVpnAuthorizationRuleTargetNetworkCidr = targetNetworkCidrarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-accessgroupid
eccvarAccessGroupId :: Lens' EC2ClientVpnAuthorizationRule (Maybe (Val Text))
eccvarAccessGroupId = lens _eC2ClientVpnAuthorizationRuleAccessGroupId (\s a -> s { _eC2ClientVpnAuthorizationRuleAccessGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-authorizeallgroups
eccvarAuthorizeAllGroups :: Lens' EC2ClientVpnAuthorizationRule (Maybe (Val Bool))
eccvarAuthorizeAllGroups = lens _eC2ClientVpnAuthorizationRuleAuthorizeAllGroups (\s a -> s { _eC2ClientVpnAuthorizationRuleAuthorizeAllGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-clientvpnendpointid
eccvarClientVpnEndpointId :: Lens' EC2ClientVpnAuthorizationRule (Val Text)
eccvarClientVpnEndpointId = lens _eC2ClientVpnAuthorizationRuleClientVpnEndpointId (\s a -> s { _eC2ClientVpnAuthorizationRuleClientVpnEndpointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-description
eccvarDescription :: Lens' EC2ClientVpnAuthorizationRule (Maybe (Val Text))
eccvarDescription = lens _eC2ClientVpnAuthorizationRuleDescription (\s a -> s { _eC2ClientVpnAuthorizationRuleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-targetnetworkcidr
eccvarTargetNetworkCidr :: Lens' EC2ClientVpnAuthorizationRule (Val Text)
eccvarTargetNetworkCidr = lens _eC2ClientVpnAuthorizationRuleTargetNetworkCidr (\s a -> s { _eC2ClientVpnAuthorizationRuleTargetNetworkCidr = a })
