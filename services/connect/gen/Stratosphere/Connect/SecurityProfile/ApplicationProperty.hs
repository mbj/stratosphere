module Stratosphere.Connect.SecurityProfile.ApplicationProperty (
        ApplicationProperty(..), mkApplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-application.html>
    ApplicationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-application.html#cfn-connect-securityprofile-application-applicationpermissions>
                         applicationPermissions :: (ValueList Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-application.html#cfn-connect-securityprofile-application-namespace>
                         namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> ApplicationProperty
mkApplicationProperty applicationPermissions namespace
  = ApplicationProperty
      {haddock_workaround_ = (),
       applicationPermissions = applicationPermissions,
       namespace = namespace}
instance ToResourceProperties ApplicationProperty where
  toResourceProperties ApplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::SecurityProfile.Application",
         supportsTags = Prelude.False,
         properties = ["ApplicationPermissions"
                         JSON..= applicationPermissions,
                       "Namespace" JSON..= namespace]}
instance JSON.ToJSON ApplicationProperty where
  toJSON ApplicationProperty {..}
    = JSON.object
        ["ApplicationPermissions" JSON..= applicationPermissions,
         "Namespace" JSON..= namespace]
instance Property "ApplicationPermissions" ApplicationProperty where
  type PropertyType "ApplicationPermissions" ApplicationProperty = ValueList Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {applicationPermissions = newValue, ..}
instance Property "Namespace" ApplicationProperty where
  type PropertyType "Namespace" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {namespace = newValue, ..}