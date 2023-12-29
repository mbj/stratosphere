module Stratosphere.EC2.LaunchTemplate.TotalLocalStorageGBProperty (
        TotalLocalStorageGBProperty(..), mkTotalLocalStorageGBProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalLocalStorageGBProperty
  = TotalLocalStorageGBProperty {max :: (Prelude.Maybe (Value Prelude.Double)),
                                 min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalLocalStorageGBProperty :: TotalLocalStorageGBProperty
mkTotalLocalStorageGBProperty
  = TotalLocalStorageGBProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties TotalLocalStorageGBProperty where
  toResourceProperties TotalLocalStorageGBProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.TotalLocalStorageGB",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON TotalLocalStorageGBProperty where
  toJSON TotalLocalStorageGBProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" TotalLocalStorageGBProperty where
  type PropertyType "Max" TotalLocalStorageGBProperty = Value Prelude.Double
  set newValue TotalLocalStorageGBProperty {..}
    = TotalLocalStorageGBProperty {max = Prelude.pure newValue, ..}
instance Property "Min" TotalLocalStorageGBProperty where
  type PropertyType "Min" TotalLocalStorageGBProperty = Value Prelude.Double
  set newValue TotalLocalStorageGBProperty {..}
    = TotalLocalStorageGBProperty {min = Prelude.pure newValue, ..}