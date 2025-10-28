module Stratosphere.DataZone.SubscriptionTarget (
        module Exports, SubscriptionTarget(..), mkSubscriptionTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.SubscriptionTarget.SubscriptionTargetFormProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionTarget
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html>
    SubscriptionTarget {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-applicableassettypes>
                        applicableAssetTypes :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-authorizedprincipals>
                        authorizedPrincipals :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-domainidentifier>
                        domainIdentifier :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-environmentidentifier>
                        environmentIdentifier :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-manageaccessrole>
                        manageAccessRole :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-provider>
                        provider :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-subscriptiontargetconfig>
                        subscriptionTargetConfig :: [SubscriptionTargetFormProperty],
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-subscriptiontarget.html#cfn-datazone-subscriptiontarget-type>
                        type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionTarget ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> [SubscriptionTargetFormProperty]
                    -> Value Prelude.Text -> SubscriptionTarget
mkSubscriptionTarget
  applicableAssetTypes
  authorizedPrincipals
  domainIdentifier
  environmentIdentifier
  manageAccessRole
  name
  subscriptionTargetConfig
  type'
  = SubscriptionTarget
      {haddock_workaround_ = (),
       applicableAssetTypes = applicableAssetTypes,
       authorizedPrincipals = authorizedPrincipals,
       domainIdentifier = domainIdentifier,
       environmentIdentifier = environmentIdentifier,
       manageAccessRole = manageAccessRole, name = name,
       subscriptionTargetConfig = subscriptionTargetConfig, type' = type',
       provider = Prelude.Nothing}
instance ToResourceProperties SubscriptionTarget where
  toResourceProperties SubscriptionTarget {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::SubscriptionTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicableAssetTypes" JSON..= applicableAssetTypes,
                            "AuthorizedPrincipals" JSON..= authorizedPrincipals,
                            "DomainIdentifier" JSON..= domainIdentifier,
                            "EnvironmentIdentifier" JSON..= environmentIdentifier,
                            "ManageAccessRole" JSON..= manageAccessRole, "Name" JSON..= name,
                            "SubscriptionTargetConfig" JSON..= subscriptionTargetConfig,
                            "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Provider" Prelude.<$> provider]))}
instance JSON.ToJSON SubscriptionTarget where
  toJSON SubscriptionTarget {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicableAssetTypes" JSON..= applicableAssetTypes,
               "AuthorizedPrincipals" JSON..= authorizedPrincipals,
               "DomainIdentifier" JSON..= domainIdentifier,
               "EnvironmentIdentifier" JSON..= environmentIdentifier,
               "ManageAccessRole" JSON..= manageAccessRole, "Name" JSON..= name,
               "SubscriptionTargetConfig" JSON..= subscriptionTargetConfig,
               "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Provider" Prelude.<$> provider])))
instance Property "ApplicableAssetTypes" SubscriptionTarget where
  type PropertyType "ApplicableAssetTypes" SubscriptionTarget = ValueList Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {applicableAssetTypes = newValue, ..}
instance Property "AuthorizedPrincipals" SubscriptionTarget where
  type PropertyType "AuthorizedPrincipals" SubscriptionTarget = ValueList Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {authorizedPrincipals = newValue, ..}
instance Property "DomainIdentifier" SubscriptionTarget where
  type PropertyType "DomainIdentifier" SubscriptionTarget = Value Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {domainIdentifier = newValue, ..}
instance Property "EnvironmentIdentifier" SubscriptionTarget where
  type PropertyType "EnvironmentIdentifier" SubscriptionTarget = Value Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {environmentIdentifier = newValue, ..}
instance Property "ManageAccessRole" SubscriptionTarget where
  type PropertyType "ManageAccessRole" SubscriptionTarget = Value Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {manageAccessRole = newValue, ..}
instance Property "Name" SubscriptionTarget where
  type PropertyType "Name" SubscriptionTarget = Value Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {name = newValue, ..}
instance Property "Provider" SubscriptionTarget where
  type PropertyType "Provider" SubscriptionTarget = Value Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {provider = Prelude.pure newValue, ..}
instance Property "SubscriptionTargetConfig" SubscriptionTarget where
  type PropertyType "SubscriptionTargetConfig" SubscriptionTarget = [SubscriptionTargetFormProperty]
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {subscriptionTargetConfig = newValue, ..}
instance Property "Type" SubscriptionTarget where
  type PropertyType "Type" SubscriptionTarget = Value Prelude.Text
  set newValue SubscriptionTarget {..}
    = SubscriptionTarget {type' = newValue, ..}