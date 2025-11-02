module Stratosphere.QBusiness.Application.QAppsConfigurationProperty (
        QAppsConfigurationProperty(..), mkQAppsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QAppsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-qappsconfiguration.html>
    QAppsConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-qappsconfiguration.html#cfn-qbusiness-application-qappsconfiguration-qappscontrolmode>
                                qAppsControlMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQAppsConfigurationProperty ::
  Value Prelude.Text -> QAppsConfigurationProperty
mkQAppsConfigurationProperty qAppsControlMode
  = QAppsConfigurationProperty
      {haddock_workaround_ = (), qAppsControlMode = qAppsControlMode}
instance ToResourceProperties QAppsConfigurationProperty where
  toResourceProperties QAppsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Application.QAppsConfiguration",
         supportsTags = Prelude.False,
         properties = ["QAppsControlMode" JSON..= qAppsControlMode]}
instance JSON.ToJSON QAppsConfigurationProperty where
  toJSON QAppsConfigurationProperty {..}
    = JSON.object ["QAppsControlMode" JSON..= qAppsControlMode]
instance Property "QAppsControlMode" QAppsConfigurationProperty where
  type PropertyType "QAppsControlMode" QAppsConfigurationProperty = Value Prelude.Text
  set newValue QAppsConfigurationProperty {..}
    = QAppsConfigurationProperty {qAppsControlMode = newValue, ..}