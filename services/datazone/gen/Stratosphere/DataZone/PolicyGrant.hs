module Stratosphere.DataZone.PolicyGrant (
        module Exports, PolicyGrant(..), mkPolicyGrant
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.PolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.PolicyGrantPrincipalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyGrant
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html>
    PolicyGrant {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html#cfn-datazone-policygrant-detail>
                 detail :: (Prelude.Maybe PolicyGrantDetailProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html#cfn-datazone-policygrant-domainidentifier>
                 domainIdentifier :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html#cfn-datazone-policygrant-entityidentifier>
                 entityIdentifier :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html#cfn-datazone-policygrant-entitytype>
                 entityType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html#cfn-datazone-policygrant-policytype>
                 policyType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-policygrant.html#cfn-datazone-policygrant-principal>
                 principal :: (Prelude.Maybe PolicyGrantPrincipalProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyGrant ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> PolicyGrant
mkPolicyGrant
  domainIdentifier
  entityIdentifier
  entityType
  policyType
  = PolicyGrant
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       entityIdentifier = entityIdentifier, entityType = entityType,
       policyType = policyType, detail = Prelude.Nothing,
       principal = Prelude.Nothing}
instance ToResourceProperties PolicyGrant where
  toResourceProperties PolicyGrant {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "EntityIdentifier" JSON..= entityIdentifier,
                            "EntityType" JSON..= entityType, "PolicyType" JSON..= policyType]
                           (Prelude.catMaybes
                              [(JSON..=) "Detail" Prelude.<$> detail,
                               (JSON..=) "Principal" Prelude.<$> principal]))}
instance JSON.ToJSON PolicyGrant where
  toJSON PolicyGrant {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "EntityIdentifier" JSON..= entityIdentifier,
               "EntityType" JSON..= entityType, "PolicyType" JSON..= policyType]
              (Prelude.catMaybes
                 [(JSON..=) "Detail" Prelude.<$> detail,
                  (JSON..=) "Principal" Prelude.<$> principal])))
instance Property "Detail" PolicyGrant where
  type PropertyType "Detail" PolicyGrant = PolicyGrantDetailProperty
  set newValue PolicyGrant {..}
    = PolicyGrant {detail = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" PolicyGrant where
  type PropertyType "DomainIdentifier" PolicyGrant = Value Prelude.Text
  set newValue PolicyGrant {..}
    = PolicyGrant {domainIdentifier = newValue, ..}
instance Property "EntityIdentifier" PolicyGrant where
  type PropertyType "EntityIdentifier" PolicyGrant = Value Prelude.Text
  set newValue PolicyGrant {..}
    = PolicyGrant {entityIdentifier = newValue, ..}
instance Property "EntityType" PolicyGrant where
  type PropertyType "EntityType" PolicyGrant = Value Prelude.Text
  set newValue PolicyGrant {..}
    = PolicyGrant {entityType = newValue, ..}
instance Property "PolicyType" PolicyGrant where
  type PropertyType "PolicyType" PolicyGrant = Value Prelude.Text
  set newValue PolicyGrant {..}
    = PolicyGrant {policyType = newValue, ..}
instance Property "Principal" PolicyGrant where
  type PropertyType "Principal" PolicyGrant = PolicyGrantPrincipalProperty
  set newValue PolicyGrant {..}
    = PolicyGrant {principal = Prelude.pure newValue, ..}