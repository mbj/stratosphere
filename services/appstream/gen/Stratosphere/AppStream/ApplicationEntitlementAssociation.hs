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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationentitlementassociation.html>
    ApplicationEntitlementAssociation {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationentitlementassociation.html#cfn-appstream-applicationentitlementassociation-applicationidentifier>
                                       applicationIdentifier :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationentitlementassociation.html#cfn-appstream-applicationentitlementassociation-entitlementname>
                                       entitlementName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationentitlementassociation.html#cfn-appstream-applicationentitlementassociation-stackname>
                                       stackName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationEntitlementAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ApplicationEntitlementAssociation
mkApplicationEntitlementAssociation
  applicationIdentifier
  entitlementName
  stackName
  = ApplicationEntitlementAssociation
      {haddock_workaround_ = (),
       applicationIdentifier = applicationIdentifier,
       entitlementName = entitlementName, stackName = stackName}
instance ToResourceProperties ApplicationEntitlementAssociation where
  toResourceProperties ApplicationEntitlementAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ApplicationEntitlementAssociation",
         supportsTags = Prelude.False,
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