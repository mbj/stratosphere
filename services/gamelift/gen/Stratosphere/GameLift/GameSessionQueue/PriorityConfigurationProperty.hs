module Stratosphere.GameLift.GameSessionQueue.PriorityConfigurationProperty (
        PriorityConfigurationProperty(..), mkPriorityConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PriorityConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-priorityconfiguration.html>
    PriorityConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-priorityconfiguration.html#cfn-gamelift-gamesessionqueue-priorityconfiguration-locationorder>
                                   locationOrder :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-priorityconfiguration.html#cfn-gamelift-gamesessionqueue-priorityconfiguration-priorityorder>
                                   priorityOrder :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPriorityConfigurationProperty :: PriorityConfigurationProperty
mkPriorityConfigurationProperty
  = PriorityConfigurationProperty
      {haddock_workaround_ = (), locationOrder = Prelude.Nothing,
       priorityOrder = Prelude.Nothing}
instance ToResourceProperties PriorityConfigurationProperty where
  toResourceProperties PriorityConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue.PriorityConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LocationOrder" Prelude.<$> locationOrder,
                            (JSON..=) "PriorityOrder" Prelude.<$> priorityOrder])}
instance JSON.ToJSON PriorityConfigurationProperty where
  toJSON PriorityConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LocationOrder" Prelude.<$> locationOrder,
               (JSON..=) "PriorityOrder" Prelude.<$> priorityOrder]))
instance Property "LocationOrder" PriorityConfigurationProperty where
  type PropertyType "LocationOrder" PriorityConfigurationProperty = ValueList Prelude.Text
  set newValue PriorityConfigurationProperty {..}
    = PriorityConfigurationProperty
        {locationOrder = Prelude.pure newValue, ..}
instance Property "PriorityOrder" PriorityConfigurationProperty where
  type PropertyType "PriorityOrder" PriorityConfigurationProperty = ValueList Prelude.Text
  set newValue PriorityConfigurationProperty {..}
    = PriorityConfigurationProperty
        {priorityOrder = Prelude.pure newValue, ..}