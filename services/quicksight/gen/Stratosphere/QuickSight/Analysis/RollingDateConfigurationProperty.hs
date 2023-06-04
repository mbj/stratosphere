module Stratosphere.QuickSight.Analysis.RollingDateConfigurationProperty (
        RollingDateConfigurationProperty(..),
        mkRollingDateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RollingDateConfigurationProperty
  = RollingDateConfigurationProperty {dataSetIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      expression :: (Value Prelude.Text)}
mkRollingDateConfigurationProperty ::
  Value Prelude.Text -> RollingDateConfigurationProperty
mkRollingDateConfigurationProperty expression
  = RollingDateConfigurationProperty
      {expression = expression, dataSetIdentifier = Prelude.Nothing}
instance ToResourceProperties RollingDateConfigurationProperty where
  toResourceProperties RollingDateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RollingDateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "DataSetIdentifier" Prelude.<$> dataSetIdentifier]))}
instance JSON.ToJSON RollingDateConfigurationProperty where
  toJSON RollingDateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "DataSetIdentifier" Prelude.<$> dataSetIdentifier])))
instance Property "DataSetIdentifier" RollingDateConfigurationProperty where
  type PropertyType "DataSetIdentifier" RollingDateConfigurationProperty = Value Prelude.Text
  set newValue RollingDateConfigurationProperty {..}
    = RollingDateConfigurationProperty
        {dataSetIdentifier = Prelude.pure newValue, ..}
instance Property "Expression" RollingDateConfigurationProperty where
  type PropertyType "Expression" RollingDateConfigurationProperty = Value Prelude.Text
  set newValue RollingDateConfigurationProperty {..}
    = RollingDateConfigurationProperty {expression = newValue, ..}