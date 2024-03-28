module Stratosphere.Connect.ViewVersion (
        ViewVersion(..), mkViewVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ViewVersion
  = ViewVersion {versionDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 viewArn :: (Value Prelude.Text),
                 viewContentSha256 :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkViewVersion :: Value Prelude.Text -> ViewVersion
mkViewVersion viewArn
  = ViewVersion
      {viewArn = viewArn, versionDescription = Prelude.Nothing,
       viewContentSha256 = Prelude.Nothing}
instance ToResourceProperties ViewVersion where
  toResourceProperties ViewVersion {..}
    = ResourceProperties
        {awsType = "AWS::Connect::ViewVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ViewArn" JSON..= viewArn]
                           (Prelude.catMaybes
                              [(JSON..=) "VersionDescription" Prelude.<$> versionDescription,
                               (JSON..=) "ViewContentSha256" Prelude.<$> viewContentSha256]))}
instance JSON.ToJSON ViewVersion where
  toJSON ViewVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ViewArn" JSON..= viewArn]
              (Prelude.catMaybes
                 [(JSON..=) "VersionDescription" Prelude.<$> versionDescription,
                  (JSON..=) "ViewContentSha256" Prelude.<$> viewContentSha256])))
instance Property "VersionDescription" ViewVersion where
  type PropertyType "VersionDescription" ViewVersion = Value Prelude.Text
  set newValue ViewVersion {..}
    = ViewVersion {versionDescription = Prelude.pure newValue, ..}
instance Property "ViewArn" ViewVersion where
  type PropertyType "ViewArn" ViewVersion = Value Prelude.Text
  set newValue ViewVersion {..}
    = ViewVersion {viewArn = newValue, ..}
instance Property "ViewContentSha256" ViewVersion where
  type PropertyType "ViewContentSha256" ViewVersion = Value Prelude.Text
  set newValue ViewVersion {..}
    = ViewVersion {viewContentSha256 = Prelude.pure newValue, ..}