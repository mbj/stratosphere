module Stratosphere.QuickSight.DataSet.OutputColumnProperty (
        OutputColumnProperty(..), mkOutputColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputColumnProperty
  = OutputColumnProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          type' :: (Prelude.Maybe (Value Prelude.Text))}
mkOutputColumnProperty :: OutputColumnProperty
mkOutputColumnProperty
  = OutputColumnProperty
      {description = Prelude.Nothing, name = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties OutputColumnProperty where
  toResourceProperties OutputColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.OutputColumn",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON OutputColumnProperty where
  toJSON OutputColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Description" OutputColumnProperty where
  type PropertyType "Description" OutputColumnProperty = Value Prelude.Text
  set newValue OutputColumnProperty {..}
    = OutputColumnProperty {description = Prelude.pure newValue, ..}
instance Property "Name" OutputColumnProperty where
  type PropertyType "Name" OutputColumnProperty = Value Prelude.Text
  set newValue OutputColumnProperty {..}
    = OutputColumnProperty {name = Prelude.pure newValue, ..}
instance Property "Type" OutputColumnProperty where
  type PropertyType "Type" OutputColumnProperty = Value Prelude.Text
  set newValue OutputColumnProperty {..}
    = OutputColumnProperty {type' = Prelude.pure newValue, ..}