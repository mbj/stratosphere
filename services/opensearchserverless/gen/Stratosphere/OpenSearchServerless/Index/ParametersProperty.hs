module Stratosphere.OpenSearchServerless.Index.ParametersProperty (
        ParametersProperty(..), mkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-parameters.html>
    ParametersProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-parameters.html#cfn-opensearchserverless-index-parameters-efconstruction>
                        efConstruction :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-parameters.html#cfn-opensearchserverless-index-parameters-m>
                        m :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParametersProperty :: ParametersProperty
mkParametersProperty
  = ParametersProperty
      {haddock_workaround_ = (), efConstruction = Prelude.Nothing,
       m = Prelude.Nothing}
instance ToResourceProperties ParametersProperty where
  toResourceProperties ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index.Parameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EfConstruction" Prelude.<$> efConstruction,
                            (JSON..=) "M" Prelude.<$> m])}
instance JSON.ToJSON ParametersProperty where
  toJSON ParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EfConstruction" Prelude.<$> efConstruction,
               (JSON..=) "M" Prelude.<$> m]))
instance Property "EfConstruction" ParametersProperty where
  type PropertyType "EfConstruction" ParametersProperty = Value Prelude.Integer
  set newValue ParametersProperty {..}
    = ParametersProperty {efConstruction = Prelude.pure newValue, ..}
instance Property "M" ParametersProperty where
  type PropertyType "M" ParametersProperty = Value Prelude.Integer
  set newValue ParametersProperty {..}
    = ParametersProperty {m = Prelude.pure newValue, ..}