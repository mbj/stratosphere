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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html>
    Configuration {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-authenticationstrategy>
                   authenticationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-data>
                   data' :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-enginetype>
                   engineType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-engineversion>
                   engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-tags>
                   tags :: (Prelude.Maybe [TagsEntryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Configuration
mkConfiguration data' engineType name
  = Configuration
      {haddock_workaround_ = (), data' = data', engineType = engineType,
       name = name, authenticationStrategy = Prelude.Nothing,
       description = Prelude.Nothing, engineVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Configuration where
  toResourceProperties Configuration {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Configuration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Data" JSON..= data', "EngineType" JSON..= engineType,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationStrategy"
                                 Prelude.<$> authenticationStrategy,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Configuration where
  toJSON Configuration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Data" JSON..= data', "EngineType" JSON..= engineType,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationStrategy"
                    Prelude.<$> authenticationStrategy,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
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
    = Configuration {engineVersion = Prelude.pure newValue, ..}
instance Property "Name" Configuration where
  type PropertyType "Name" Configuration = Value Prelude.Text
  set newValue Configuration {..}
    = Configuration {name = newValue, ..}
instance Property "Tags" Configuration where
  type PropertyType "Tags" Configuration = [TagsEntryProperty]
  set newValue Configuration {..}
    = Configuration {tags = Prelude.pure newValue, ..}