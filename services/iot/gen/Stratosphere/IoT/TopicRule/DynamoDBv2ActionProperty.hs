module Stratosphere.IoT.TopicRule.DynamoDBv2ActionProperty (
        module Exports, DynamoDBv2ActionProperty(..),
        mkDynamoDBv2ActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.PutItemInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBv2ActionProperty
  = DynamoDBv2ActionProperty {putItem :: (Prelude.Maybe PutItemInputProperty),
                              roleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkDynamoDBv2ActionProperty :: DynamoDBv2ActionProperty
mkDynamoDBv2ActionProperty
  = DynamoDBv2ActionProperty
      {putItem = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties DynamoDBv2ActionProperty where
  toResourceProperties DynamoDBv2ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.DynamoDBv2Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PutItem" Prelude.<$> putItem,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON DynamoDBv2ActionProperty where
  toJSON DynamoDBv2ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PutItem" Prelude.<$> putItem,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "PutItem" DynamoDBv2ActionProperty where
  type PropertyType "PutItem" DynamoDBv2ActionProperty = PutItemInputProperty
  set newValue DynamoDBv2ActionProperty {..}
    = DynamoDBv2ActionProperty {putItem = Prelude.pure newValue, ..}
instance Property "RoleArn" DynamoDBv2ActionProperty where
  type PropertyType "RoleArn" DynamoDBv2ActionProperty = Value Prelude.Text
  set newValue DynamoDBv2ActionProperty {..}
    = DynamoDBv2ActionProperty {roleArn = Prelude.pure newValue, ..}