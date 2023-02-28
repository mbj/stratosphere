module Stratosphere.ApiGateway.ApiKey (
        module Exports, ApiKey(..), mkApiKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.ApiKey.StageKeyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ApiKey
  = ApiKey {customerId :: (Prelude.Maybe (Value Prelude.Text)),
            description :: (Prelude.Maybe (Value Prelude.Text)),
            enabled :: (Prelude.Maybe (Value Prelude.Bool)),
            generateDistinctId :: (Prelude.Maybe (Value Prelude.Bool)),
            name :: (Prelude.Maybe (Value Prelude.Text)),
            stageKeys :: (Prelude.Maybe [StageKeyProperty]),
            tags :: (Prelude.Maybe [Tag]),
            value :: (Prelude.Maybe (Value Prelude.Text))}
mkApiKey :: ApiKey
mkApiKey
  = ApiKey
      {customerId = Prelude.Nothing, description = Prelude.Nothing,
       enabled = Prelude.Nothing, generateDistinctId = Prelude.Nothing,
       name = Prelude.Nothing, stageKeys = Prelude.Nothing,
       tags = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ApiKey where
  toResourceProperties ApiKey {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::ApiKey", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerId" Prelude.<$> customerId,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "GenerateDistinctId" Prelude.<$> generateDistinctId,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "StageKeys" Prelude.<$> stageKeys,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ApiKey where
  toJSON ApiKey {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerId" Prelude.<$> customerId,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "GenerateDistinctId" Prelude.<$> generateDistinctId,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "StageKeys" Prelude.<$> stageKeys,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "CustomerId" ApiKey where
  type PropertyType "CustomerId" ApiKey = Value Prelude.Text
  set newValue ApiKey {..}
    = ApiKey {customerId = Prelude.pure newValue, ..}
instance Property "Description" ApiKey where
  type PropertyType "Description" ApiKey = Value Prelude.Text
  set newValue ApiKey {..}
    = ApiKey {description = Prelude.pure newValue, ..}
instance Property "Enabled" ApiKey where
  type PropertyType "Enabled" ApiKey = Value Prelude.Bool
  set newValue ApiKey {..}
    = ApiKey {enabled = Prelude.pure newValue, ..}
instance Property "GenerateDistinctId" ApiKey where
  type PropertyType "GenerateDistinctId" ApiKey = Value Prelude.Bool
  set newValue ApiKey {..}
    = ApiKey {generateDistinctId = Prelude.pure newValue, ..}
instance Property "Name" ApiKey where
  type PropertyType "Name" ApiKey = Value Prelude.Text
  set newValue ApiKey {..}
    = ApiKey {name = Prelude.pure newValue, ..}
instance Property "StageKeys" ApiKey where
  type PropertyType "StageKeys" ApiKey = [StageKeyProperty]
  set newValue ApiKey {..}
    = ApiKey {stageKeys = Prelude.pure newValue, ..}
instance Property "Tags" ApiKey where
  type PropertyType "Tags" ApiKey = [Tag]
  set newValue ApiKey {..}
    = ApiKey {tags = Prelude.pure newValue, ..}
instance Property "Value" ApiKey where
  type PropertyType "Value" ApiKey = Value Prelude.Text
  set newValue ApiKey {..}
    = ApiKey {value = Prelude.pure newValue, ..}