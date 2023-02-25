module Stratosphere.ElasticBeanstalk.Environment.TierProperty (
        TierProperty(..), mkTierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TierProperty
  = TierProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                  type' :: (Prelude.Maybe (Value Prelude.Text)),
                  version :: (Prelude.Maybe (Value Prelude.Text))}
mkTierProperty :: TierProperty
mkTierProperty
  = TierProperty
      {name = Prelude.Nothing, type' = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties TierProperty where
  toResourceProperties TierProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Environment.Tier",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON TierProperty where
  toJSON TierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Name" TierProperty where
  type PropertyType "Name" TierProperty = Value Prelude.Text
  set newValue TierProperty {..}
    = TierProperty {name = Prelude.pure newValue, ..}
instance Property "Type" TierProperty where
  type PropertyType "Type" TierProperty = Value Prelude.Text
  set newValue TierProperty {..}
    = TierProperty {type' = Prelude.pure newValue, ..}
instance Property "Version" TierProperty where
  type PropertyType "Version" TierProperty = Value Prelude.Text
  set newValue TierProperty {..}
    = TierProperty {version = Prelude.pure newValue, ..}