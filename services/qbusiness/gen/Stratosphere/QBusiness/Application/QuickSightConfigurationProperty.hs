module Stratosphere.QBusiness.Application.QuickSightConfigurationProperty (
        QuickSightConfigurationProperty(..),
        mkQuickSightConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuickSightConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-quicksightconfiguration.html>
    QuickSightConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-quicksightconfiguration.html#cfn-qbusiness-application-quicksightconfiguration-clientnamespace>
                                     clientNamespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickSightConfigurationProperty ::
  Value Prelude.Text -> QuickSightConfigurationProperty
mkQuickSightConfigurationProperty clientNamespace
  = QuickSightConfigurationProperty
      {haddock_workaround_ = (), clientNamespace = clientNamespace}
instance ToResourceProperties QuickSightConfigurationProperty where
  toResourceProperties QuickSightConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Application.QuickSightConfiguration",
         supportsTags = Prelude.False,
         properties = ["ClientNamespace" JSON..= clientNamespace]}
instance JSON.ToJSON QuickSightConfigurationProperty where
  toJSON QuickSightConfigurationProperty {..}
    = JSON.object ["ClientNamespace" JSON..= clientNamespace]
instance Property "ClientNamespace" QuickSightConfigurationProperty where
  type PropertyType "ClientNamespace" QuickSightConfigurationProperty = Value Prelude.Text
  set newValue QuickSightConfigurationProperty {..}
    = QuickSightConfigurationProperty {clientNamespace = newValue, ..}