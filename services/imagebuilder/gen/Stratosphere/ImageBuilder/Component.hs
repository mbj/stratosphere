module Stratosphere.ImageBuilder.Component (
        Component(..), mkComponent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Component
  = Component {changeDescription :: (Prelude.Maybe (Value Prelude.Text)),
               data' :: (Prelude.Maybe (Value Prelude.Text)),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Value Prelude.Text),
               platform :: (Value Prelude.Text),
               supportedOsVersions :: (Prelude.Maybe (ValueList Prelude.Text)),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               uri :: (Prelude.Maybe (Value Prelude.Text)),
               version :: (Value Prelude.Text)}
mkComponent ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Component
mkComponent name platform version
  = Component
      {name = name, platform = platform, version = version,
       changeDescription = Prelude.Nothing, data' = Prelude.Nothing,
       description = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       supportedOsVersions = Prelude.Nothing, tags = Prelude.Nothing,
       uri = Prelude.Nothing}
instance ToResourceProperties Component where
  toResourceProperties Component {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Component",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Platform" JSON..= platform,
                            "Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "ChangeDescription" Prelude.<$> changeDescription,
                               (JSON..=) "Data" Prelude.<$> data',
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SupportedOsVersions" Prelude.<$> supportedOsVersions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Uri" Prelude.<$> uri]))}
instance JSON.ToJSON Component where
  toJSON Component {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Platform" JSON..= platform,
               "Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "ChangeDescription" Prelude.<$> changeDescription,
                  (JSON..=) "Data" Prelude.<$> data',
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SupportedOsVersions" Prelude.<$> supportedOsVersions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Uri" Prelude.<$> uri])))
instance Property "ChangeDescription" Component where
  type PropertyType "ChangeDescription" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {changeDescription = Prelude.pure newValue, ..}
instance Property "Data" Component where
  type PropertyType "Data" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {data' = Prelude.pure newValue, ..}
instance Property "Description" Component where
  type PropertyType "Description" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {description = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Component where
  type PropertyType "KmsKeyId" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Component where
  type PropertyType "Name" Component = Value Prelude.Text
  set newValue Component {..} = Component {name = newValue, ..}
instance Property "Platform" Component where
  type PropertyType "Platform" Component = Value Prelude.Text
  set newValue Component {..} = Component {platform = newValue, ..}
instance Property "SupportedOsVersions" Component where
  type PropertyType "SupportedOsVersions" Component = ValueList Prelude.Text
  set newValue Component {..}
    = Component {supportedOsVersions = Prelude.pure newValue, ..}
instance Property "Tags" Component where
  type PropertyType "Tags" Component = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Component {..}
    = Component {tags = Prelude.pure newValue, ..}
instance Property "Uri" Component where
  type PropertyType "Uri" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {uri = Prelude.pure newValue, ..}
instance Property "Version" Component where
  type PropertyType "Version" Component = Value Prelude.Text
  set newValue Component {..} = Component {version = newValue, ..}