module Stratosphere.OpsWorksCM.Server.EngineAttributeProperty (
        EngineAttributeProperty(..), mkEngineAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EngineAttributeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html>
    EngineAttributeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-name>
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-value>
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEngineAttributeProperty :: EngineAttributeProperty
mkEngineAttributeProperty
  = EngineAttributeProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EngineAttributeProperty where
  toResourceProperties EngineAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorksCM::Server.EngineAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EngineAttributeProperty where
  toJSON EngineAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EngineAttributeProperty where
  type PropertyType "Name" EngineAttributeProperty = Value Prelude.Text
  set newValue EngineAttributeProperty {..}
    = EngineAttributeProperty {name = Prelude.pure newValue, ..}
instance Property "Value" EngineAttributeProperty where
  type PropertyType "Value" EngineAttributeProperty = Value Prelude.Text
  set newValue EngineAttributeProperty {..}
    = EngineAttributeProperty {value = Prelude.pure newValue, ..}