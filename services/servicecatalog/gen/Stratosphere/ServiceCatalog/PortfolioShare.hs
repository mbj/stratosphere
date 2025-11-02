module Stratosphere.ServiceCatalog.PortfolioShare (
        PortfolioShare(..), mkPortfolioShare
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortfolioShare
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html>
    PortfolioShare {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-acceptlanguage>
                    acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-accountid>
                    accountId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-portfolioid>
                    portfolioId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-sharetagoptions>
                    shareTagOptions :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortfolioShare ::
  Value Prelude.Text -> Value Prelude.Text -> PortfolioShare
mkPortfolioShare accountId portfolioId
  = PortfolioShare
      {haddock_workaround_ = (), accountId = accountId,
       portfolioId = portfolioId, acceptLanguage = Prelude.Nothing,
       shareTagOptions = Prelude.Nothing}
instance ToResourceProperties PortfolioShare where
  toResourceProperties PortfolioShare {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::PortfolioShare",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountId" JSON..= accountId, "PortfolioId" JSON..= portfolioId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "ShareTagOptions" Prelude.<$> shareTagOptions]))}
instance JSON.ToJSON PortfolioShare where
  toJSON PortfolioShare {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountId" JSON..= accountId, "PortfolioId" JSON..= portfolioId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "ShareTagOptions" Prelude.<$> shareTagOptions])))
instance Property "AcceptLanguage" PortfolioShare where
  type PropertyType "AcceptLanguage" PortfolioShare = Value Prelude.Text
  set newValue PortfolioShare {..}
    = PortfolioShare {acceptLanguage = Prelude.pure newValue, ..}
instance Property "AccountId" PortfolioShare where
  type PropertyType "AccountId" PortfolioShare = Value Prelude.Text
  set newValue PortfolioShare {..}
    = PortfolioShare {accountId = newValue, ..}
instance Property "PortfolioId" PortfolioShare where
  type PropertyType "PortfolioId" PortfolioShare = Value Prelude.Text
  set newValue PortfolioShare {..}
    = PortfolioShare {portfolioId = newValue, ..}
instance Property "ShareTagOptions" PortfolioShare where
  type PropertyType "ShareTagOptions" PortfolioShare = Value Prelude.Bool
  set newValue PortfolioShare {..}
    = PortfolioShare {shareTagOptions = Prelude.pure newValue, ..}