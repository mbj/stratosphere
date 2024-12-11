module Stratosphere.ApplicationSignals.ServiceLevelObjective (
        module Exports, ServiceLevelObjective(..), mkServiceLevelObjective
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.BurnRateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.GoalProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.RequestBasedSliProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.SliProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceLevelObjective
  = ServiceLevelObjective {burnRateConfigurations :: (Prelude.Maybe [BurnRateConfigurationProperty]),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           goal :: (Prelude.Maybe GoalProperty),
                           name :: (Value Prelude.Text),
                           requestBasedSli :: (Prelude.Maybe RequestBasedSliProperty),
                           sli :: (Prelude.Maybe SliProperty),
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceLevelObjective ::
  Value Prelude.Text -> ServiceLevelObjective
mkServiceLevelObjective name
  = ServiceLevelObjective
      {name = name, burnRateConfigurations = Prelude.Nothing,
       description = Prelude.Nothing, goal = Prelude.Nothing,
       requestBasedSli = Prelude.Nothing, sli = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ServiceLevelObjective where
  toResourceProperties ServiceLevelObjective {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "BurnRateConfigurations"
                                 Prelude.<$> burnRateConfigurations,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Goal" Prelude.<$> goal,
                               (JSON..=) "RequestBasedSli" Prelude.<$> requestBasedSli,
                               (JSON..=) "Sli" Prelude.<$> sli,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ServiceLevelObjective where
  toJSON ServiceLevelObjective {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "BurnRateConfigurations"
                    Prelude.<$> burnRateConfigurations,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Goal" Prelude.<$> goal,
                  (JSON..=) "RequestBasedSli" Prelude.<$> requestBasedSli,
                  (JSON..=) "Sli" Prelude.<$> sli,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BurnRateConfigurations" ServiceLevelObjective where
  type PropertyType "BurnRateConfigurations" ServiceLevelObjective = [BurnRateConfigurationProperty]
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective
        {burnRateConfigurations = Prelude.pure newValue, ..}
instance Property "Description" ServiceLevelObjective where
  type PropertyType "Description" ServiceLevelObjective = Value Prelude.Text
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective {description = Prelude.pure newValue, ..}
instance Property "Goal" ServiceLevelObjective where
  type PropertyType "Goal" ServiceLevelObjective = GoalProperty
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective {goal = Prelude.pure newValue, ..}
instance Property "Name" ServiceLevelObjective where
  type PropertyType "Name" ServiceLevelObjective = Value Prelude.Text
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective {name = newValue, ..}
instance Property "RequestBasedSli" ServiceLevelObjective where
  type PropertyType "RequestBasedSli" ServiceLevelObjective = RequestBasedSliProperty
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective
        {requestBasedSli = Prelude.pure newValue, ..}
instance Property "Sli" ServiceLevelObjective where
  type PropertyType "Sli" ServiceLevelObjective = SliProperty
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective {sli = Prelude.pure newValue, ..}
instance Property "Tags" ServiceLevelObjective where
  type PropertyType "Tags" ServiceLevelObjective = [Tag]
  set newValue ServiceLevelObjective {..}
    = ServiceLevelObjective {tags = Prelude.pure newValue, ..}