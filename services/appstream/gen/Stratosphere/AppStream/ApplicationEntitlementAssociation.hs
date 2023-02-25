module Stratosphere.AppStream.ApplicationEntitlementAssociation (
        ApplicationEntitlementAssociation(..),
        mkApplicationEntitlementAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationEntitlementAssociation
  = ApplicationEntitlementAssociation {applicationIdentifier :: (Value Prelude.Text),
                                       entitlementName :: (Value Prelude.Text),
                                       stackName :: (Value Prelude.Text)}
mkApplicationEntitlementAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ApplicationEntitlementAssociation
mkApplicationEntitlementAssociation
  applicationIdentifier
  entitlementName
  stackName
  = ApplicationEntitlementAssociation
      {applicationIdentifier = applicationIdentifier,
       entitlementName = entitlementName, stackName = stackName}
instance ToResourceProperties ApplicationEntitlementAssociation where
  toResourceProperties ApplicationEntitlementAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ApplicationEntitlementAssociation",
         properties = ["ApplicationIdentifier"
                         JSON..= applicationIdentifier,
                       "EntitlementName" JSON..= entitlementName,
                       "StackName" JSON..= stackName]}
instance JSON.ToJSON ApplicationEntitlementAssociation where
  toJSON ApplicationEntitlementAssociation {..}
    = JSON.object
        ["ApplicationIdentifier" JSON..= applicationIdentifier,
         "EntitlementName" JSON..= entitlementName,
         "StackName" JSON..= stackName]
instance Property "ApplicationIdentifier" ApplicationEntitlementAssociation where
  type PropertyType "ApplicationIdentifier" ApplicationEntitlementAssociation = Value Prelude.Text
  set newValue ApplicationEntitlementAssociation {..}
    = ApplicationEntitlementAssociation
        {applicationIdentifier = newValue, ..}
instance Property "EntitlementName" ApplicationEntitlementAssociation where
  type PropertyType "EntitlementName" ApplicationEntitlementAssociation = Value Prelude.Text
  set newValue ApplicationEntitlementAssociation {..}
    = ApplicationEntitlementAssociation
        {entitlementName = newValue, ..}
instance Property "StackName" ApplicationEntitlementAssociation where
  type PropertyType "StackName" ApplicationEntitlementAssociation = Value Prelude.Text
  set newValue ApplicationEntitlementAssociation {..}
    = ApplicationEntitlementAssociation {stackName = newValue, ..}