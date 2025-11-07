module Stratosphere.MPA.IdentitySource (
        module Exports, IdentitySource(..), mkIdentitySource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MPA.IdentitySource.IdentitySourceParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data IdentitySource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-identitysource.html>
    IdentitySource {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-identitysource.html#cfn-mpa-identitysource-identitysourceparameters>
                    identitySourceParameters :: IdentitySourceParametersProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-identitysource.html#cfn-mpa-identitysource-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentitySource ::
  IdentitySourceParametersProperty -> IdentitySource
mkIdentitySource identitySourceParameters
  = IdentitySource
      {haddock_workaround_ = (),
       identitySourceParameters = identitySourceParameters,
       tags = Prelude.Nothing}
instance ToResourceProperties IdentitySource where
  toResourceProperties IdentitySource {..}
    = ResourceProperties
        {awsType = "AWS::MPA::IdentitySource", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdentitySourceParameters" JSON..= identitySourceParameters]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdentitySource where
  toJSON IdentitySource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdentitySourceParameters" JSON..= identitySourceParameters]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IdentitySourceParameters" IdentitySource where
  type PropertyType "IdentitySourceParameters" IdentitySource = IdentitySourceParametersProperty
  set newValue IdentitySource {..}
    = IdentitySource {identitySourceParameters = newValue, ..}
instance Property "Tags" IdentitySource where
  type PropertyType "Tags" IdentitySource = [Tag]
  set newValue IdentitySource {..}
    = IdentitySource {tags = Prelude.pure newValue, ..}