module Stratosphere.QBusiness.Application.AutoSubscriptionConfigurationProperty (
        AutoSubscriptionConfigurationProperty(..),
        mkAutoSubscriptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoSubscriptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-autosubscriptionconfiguration.html>
    AutoSubscriptionConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-autosubscriptionconfiguration.html#cfn-qbusiness-application-autosubscriptionconfiguration-autosubscribe>
                                           autoSubscribe :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-application-autosubscriptionconfiguration.html#cfn-qbusiness-application-autosubscriptionconfiguration-defaultsubscriptiontype>
                                           defaultSubscriptionType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoSubscriptionConfigurationProperty ::
  Value Prelude.Text -> AutoSubscriptionConfigurationProperty
mkAutoSubscriptionConfigurationProperty autoSubscribe
  = AutoSubscriptionConfigurationProperty
      {haddock_workaround_ = (), autoSubscribe = autoSubscribe,
       defaultSubscriptionType = Prelude.Nothing}
instance ToResourceProperties AutoSubscriptionConfigurationProperty where
  toResourceProperties AutoSubscriptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Application.AutoSubscriptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoSubscribe" JSON..= autoSubscribe]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultSubscriptionType"
                                 Prelude.<$> defaultSubscriptionType]))}
instance JSON.ToJSON AutoSubscriptionConfigurationProperty where
  toJSON AutoSubscriptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoSubscribe" JSON..= autoSubscribe]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultSubscriptionType"
                    Prelude.<$> defaultSubscriptionType])))
instance Property "AutoSubscribe" AutoSubscriptionConfigurationProperty where
  type PropertyType "AutoSubscribe" AutoSubscriptionConfigurationProperty = Value Prelude.Text
  set newValue AutoSubscriptionConfigurationProperty {..}
    = AutoSubscriptionConfigurationProperty
        {autoSubscribe = newValue, ..}
instance Property "DefaultSubscriptionType" AutoSubscriptionConfigurationProperty where
  type PropertyType "DefaultSubscriptionType" AutoSubscriptionConfigurationProperty = Value Prelude.Text
  set newValue AutoSubscriptionConfigurationProperty {..}
    = AutoSubscriptionConfigurationProperty
        {defaultSubscriptionType = Prelude.pure newValue, ..}