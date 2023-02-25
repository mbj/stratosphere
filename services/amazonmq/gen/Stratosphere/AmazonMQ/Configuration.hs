module Stratosphere.AmazonMQ.Configuration (
        module Exports, Configuration(..), mkConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmazonMQ.Configuration.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Configuration
  = Configuration {authenticationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                   data' :: (Value Prelude.Text),
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   engineType :: (Value Prelude.Text),
                   engineVersion :: (Value Prelude.Text),
                   name :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [TagsEntryProperty])}
mkConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Configuration
mkConfiguration data' engineType engineVersion name
  = Configuration
      {data' = data', engineType = engineType,
       engineVersion = engineVersion, name = name,
       authenticationStrategy = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Configuration where
  toResourceProperties Configuration {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Configuration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Data" JSON..= data', "EngineType" JSON..= engineType,
                            "EngineVersion" JSON..= engineVersion, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationStrategy"
                                 Prelude.<$> authenticationStrategy,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Configuration where
  toJSON Configuration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Data" JSON..= data', "EngineType" JSON..= engineType,
               "EngineVersion" JSON..= engineVersion, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationStrategy"
                    Prelude.<$> authenticationStrategy,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AuthenticationStrategy" Configuration where
  type PropertyType "AuthenticationStrategy" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration
        {authenticationStrategy = Prelude.pure newValue, ..}
instance Property "Data" Configuration where
  type PropertyType "Data" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {data' = newValue, ..}
instance Property "Description" Configuration where
  type PropertyType "Description" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {description = Prelude.pure newValue, ..}
instance Property "EngineType" Configuration where
  type PropertyType "EngineType" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {engineType = newValue, ..}
instance Property "EngineVersion" Configuration where
  type PropertyType "EngineVersion" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {engineVersion = newValue, ..}
instance Property "Name" Configuration where
  type PropertyType "Name" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {name = newValue, ..}
instance Property "Tags" Configuration where
  type PropertyType "Tags" Configuration = [TagsEntryProperty]
  set newValue Configuration {..}
    = Configuration {tags = Prelude.pure newValue, ..}