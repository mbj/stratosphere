module Stratosphere.SageMaker.Model.ImageConfigProperty (
        module Exports, ImageConfigProperty(..), mkImageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Model.RepositoryAuthConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageConfigProperty
  = ImageConfigProperty {repositoryAccessMode :: (Value Prelude.Text),
                         repositoryAuthConfig :: (Prelude.Maybe RepositoryAuthConfigProperty)}
mkImageConfigProperty :: Value Prelude.Text -> ImageConfigProperty
mkImageConfigProperty repositoryAccessMode
  = ImageConfigProperty
      {repositoryAccessMode = repositoryAccessMode,
       repositoryAuthConfig = Prelude.Nothing}
instance ToResourceProperties ImageConfigProperty where
  toResourceProperties ImageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.ImageConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RepositoryAccessMode" JSON..= repositoryAccessMode]
                           (Prelude.catMaybes
                              [(JSON..=) "RepositoryAuthConfig"
                                 Prelude.<$> repositoryAuthConfig]))}
instance JSON.ToJSON ImageConfigProperty where
  toJSON ImageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RepositoryAccessMode" JSON..= repositoryAccessMode]
              (Prelude.catMaybes
                 [(JSON..=) "RepositoryAuthConfig"
                    Prelude.<$> repositoryAuthConfig])))
instance Property "RepositoryAccessMode" ImageConfigProperty where
  type PropertyType "RepositoryAccessMode" ImageConfigProperty = Value Prelude.Text
  set newValue ImageConfigProperty {..}
    = ImageConfigProperty {repositoryAccessMode = newValue, ..}
instance Property "RepositoryAuthConfig" ImageConfigProperty where
  type PropertyType "RepositoryAuthConfig" ImageConfigProperty = RepositoryAuthConfigProperty
  set newValue ImageConfigProperty {..}
    = ImageConfigProperty
        {repositoryAuthConfig = Prelude.pure newValue, ..}