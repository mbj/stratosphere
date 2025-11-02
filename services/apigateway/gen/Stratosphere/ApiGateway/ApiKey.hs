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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html>
    ApiKey {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-customerid>
            customerId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-enabled>
            enabled :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-generatedistinctid>
            generateDistinctId :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-stagekeys>
            stageKeys :: (Prelude.Maybe [StageKeyProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-value>
            value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiKey :: ApiKey
mkApiKey
  = ApiKey
      {haddock_workaround_ = (), customerId = Prelude.Nothing,
       description = Prelude.Nothing, enabled = Prelude.Nothing,
       generateDistinctId = Prelude.Nothing, name = Prelude.Nothing,
       stageKeys = Prelude.Nothing, tags = Prelude.Nothing,
       value = Prelude.Nothing}
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