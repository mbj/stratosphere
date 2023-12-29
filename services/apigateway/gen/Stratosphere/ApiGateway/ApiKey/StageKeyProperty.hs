module Stratosphere.ApiGateway.ApiKey.StageKeyProperty (
        StageKeyProperty(..), mkStageKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageKeyProperty
  = StageKeyProperty {restApiId :: (Prelude.Maybe (Value Prelude.Text)),
                      stageName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageKeyProperty :: StageKeyProperty
mkStageKeyProperty
  = StageKeyProperty
      {restApiId = Prelude.Nothing, stageName = Prelude.Nothing}
instance ToResourceProperties StageKeyProperty where
  toResourceProperties StageKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::ApiKey.StageKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RestApiId" Prelude.<$> restApiId,
                            (JSON..=) "StageName" Prelude.<$> stageName])}
instance JSON.ToJSON StageKeyProperty where
  toJSON StageKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RestApiId" Prelude.<$> restApiId,
               (JSON..=) "StageName" Prelude.<$> stageName]))
instance Property "RestApiId" StageKeyProperty where
  type PropertyType "RestApiId" StageKeyProperty = Value Prelude.Text
  set newValue StageKeyProperty {..}
    = StageKeyProperty {restApiId = Prelude.pure newValue, ..}
instance Property "StageName" StageKeyProperty where
  type PropertyType "StageName" StageKeyProperty = Value Prelude.Text
  set newValue StageKeyProperty {..}
    = StageKeyProperty {stageName = Prelude.pure newValue, ..}