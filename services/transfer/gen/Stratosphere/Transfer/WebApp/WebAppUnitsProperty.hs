module Stratosphere.Transfer.WebApp.WebAppUnitsProperty (
        WebAppUnitsProperty(..), mkWebAppUnitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebAppUnitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-webappunits.html>
    WebAppUnitsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-webappunits.html#cfn-transfer-webapp-webappunits-provisioned>
                         provisioned :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebAppUnitsProperty ::
  Value Prelude.Integer -> WebAppUnitsProperty
mkWebAppUnitsProperty provisioned
  = WebAppUnitsProperty
      {haddock_workaround_ = (), provisioned = provisioned}
instance ToResourceProperties WebAppUnitsProperty where
  toResourceProperties WebAppUnitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::WebApp.WebAppUnits",
         supportsTags = Prelude.False,
         properties = ["Provisioned" JSON..= provisioned]}
instance JSON.ToJSON WebAppUnitsProperty where
  toJSON WebAppUnitsProperty {..}
    = JSON.object ["Provisioned" JSON..= provisioned]
instance Property "Provisioned" WebAppUnitsProperty where
  type PropertyType "Provisioned" WebAppUnitsProperty = Value Prelude.Integer
  set newValue WebAppUnitsProperty {..}
    = WebAppUnitsProperty {provisioned = newValue, ..}